package deng.fzip
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   
   public class FZip extends EventDispatcher
   {
      
      static const SIG_CENTRAL_FILE_HEADER:uint = 33639248;
      
      static const SIG_SPANNING_MARKER:uint = 808471376;
      
      static const SIG_LOCAL_FILE_HEADER:uint = 67324752;
      
      static const SIG_DIGITAL_SIGNATURE:uint = 84233040;
      
      static const SIG_END_OF_CENTRAL_DIRECTORY:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const SIG_DATA_DESCRIPTOR:uint = 134695760;
      
      static const SIG_ARCHIVE_EXTRA_DATA:uint = 134630224;
      
      static const SIG_SPANNING:uint = 134695760;
       
      
      protected var filesList:Array;
      
      protected var filesDict:Dictionary;
      
      protected var urlStream:URLStream;
      
      protected var charEncoding:String;
      
      protected var parseFunc:Function;
      
      protected var currentFile:FZipFile;
      
      protected var ddBuffer:ByteArray;
      
      protected var ddSignature:uint;
      
      protected var ddCompressedSize:uint;
      
      public function FZip(filenameEncoding:String = "utf-8")
      {
         super();
         this.charEncoding = filenameEncoding;
         this.parseFunc = this.parseIdle;
      }
      
      public function get active() : Boolean
      {
         return this.parseFunc !== this.parseIdle;
      }
      
      public function load(request:URLRequest) : void
      {
         if(!this.urlStream && this.parseFunc == this.parseIdle)
         {
            this.urlStream = new URLStream();
            this.urlStream.endian = Endian.LITTLE_ENDIAN;
            this.addEventHandlers();
            this.filesList = [];
            this.filesDict = new Dictionary();
            this.parseFunc = this.parseSignature;
            this.urlStream.load(request);
         }
      }
      
      public function loadBytes(bytes:ByteArray) : void
      {
         if(!this.urlStream && this.parseFunc == this.parseIdle)
         {
            this.filesList = [];
            this.filesDict = new Dictionary();
            bytes.position = 0;
            bytes.endian = Endian.LITTLE_ENDIAN;
            this.parseFunc = this.parseSignature;
            if(this.parse(bytes))
            {
               this.parseFunc = this.parseIdle;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new FZipErrorEvent(FZipErrorEvent.PARSE_ERROR,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.urlStream)
         {
            this.parseFunc = this.parseIdle;
            this.removeEventHandlers();
            this.urlStream.close();
            this.urlStream = null;
         }
      }
      
      public function serialize(stream:IDataOutput, includeAdler32:Boolean = false) : void
      {
         var endian:String = null;
         var ba:ByteArray = null;
         var offset:uint = 0;
         var files:uint = 0;
         var i:int = 0;
         var file:FZipFile = null;
         if(stream != null && this.filesList.length > 0)
         {
            endian = stream.endian;
            ba = new ByteArray();
            stream.endian = ba.endian = Endian.LITTLE_ENDIAN;
            offset = 0;
            files = 0;
            for(i = 0; i < this.filesList.length; i++)
            {
               file = this.filesList[i] as FZipFile;
               if(file != null)
               {
                  file.serialize(ba,includeAdler32,true,offset);
                  offset += file.serialize(stream,includeAdler32);
                  files++;
               }
            }
            if(ba.length > 0)
            {
               stream.writeBytes(ba);
            }
            stream.writeUnsignedInt(SIG_END_OF_CENTRAL_DIRECTORY);
            stream.writeShort(0);
            stream.writeShort(0);
            stream.writeShort(files);
            stream.writeShort(files);
            stream.writeUnsignedInt(ba.length);
            stream.writeUnsignedInt(offset);
            stream.writeShort(0);
            stream.endian = endian;
         }
      }
      
      public function getFileCount() : uint
      {
         return !!this.filesList ? uint(this.filesList.length) : uint(0);
      }
      
      public function getFileAt(index:uint) : FZipFile
      {
         return !!this.filesList ? this.filesList[index] as FZipFile : null;
      }
      
      public function getFileByName(name:String) : FZipFile
      {
         return !!this.filesDict[name] ? this.filesDict[name] as FZipFile : null;
      }
      
      public function addFile(name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         return this.addFileAt(!!this.filesList ? uint(this.filesList.length) : uint(0),name,content,doCompress);
      }
      
      public function addFileFromString(name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         return this.addFileFromStringAt(!!this.filesList ? uint(this.filesList.length) : uint(0),name,content,charset,doCompress);
      }
      
      public function addFileAt(index:uint, name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         if(this.filesList == null)
         {
            this.filesList = [];
         }
         if(this.filesDict == null)
         {
            this.filesDict = new Dictionary();
         }
         else if(this.filesDict[name])
         {
            throw new Error("File already exists: " + name + ". Please remove first.");
         }
         var file:FZipFile = new FZipFile();
         file.filename = name;
         file.setContent(content,doCompress);
         if(index >= this.filesList.length)
         {
            this.filesList.push(file);
         }
         else
         {
            this.filesList.splice(index,0,file);
         }
         this.filesDict[name] = file;
         return file;
      }
      
      public function addFileFromStringAt(index:uint, name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         if(this.filesList == null)
         {
            this.filesList = [];
         }
         if(this.filesDict == null)
         {
            this.filesDict = new Dictionary();
         }
         else if(this.filesDict[name])
         {
            throw new Error("File already exists: " + name + ". Please remove first.");
         }
         var file:FZipFile = new FZipFile();
         file.filename = name;
         file.setContentAsString(content,charset,doCompress);
         if(index >= this.filesList.length)
         {
            this.filesList.push(file);
         }
         else
         {
            this.filesList.splice(index,0,file);
         }
         this.filesDict[name] = file;
         return file;
      }
      
      public function removeFileAt(index:uint) : FZipFile
      {
         var file:FZipFile = null;
         if(this.filesList != null && this.filesDict != null && index < this.filesList.length)
         {
            file = this.filesList[index] as FZipFile;
            if(file != null)
            {
               this.filesList.splice(index,1);
               delete this.filesDict[file.filename];
               return file;
            }
         }
         return null;
      }
      
      protected function parse(stream:IDataInput) : Boolean
      {
         while(this.parseFunc(stream))
         {
         }
         return this.parseFunc === this.parseIdle;
      }
      
      protected function parseIdle(stream:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseSignature(stream:IDataInput) : Boolean
      {
         var sig:uint = 0;
         if(stream.bytesAvailable >= 4)
         {
            sig = stream.readUnsignedInt();
            switch(sig)
            {
               case SIG_LOCAL_FILE_HEADER:
                  this.parseFunc = this.parseLocalfile;
                  this.currentFile = new FZipFile(this.charEncoding);
                  break;
               case SIG_CENTRAL_FILE_HEADER:
               case SIG_END_OF_CENTRAL_DIRECTORY:
               case SIG_SPANNING_MARKER:
               case SIG_DIGITAL_SIGNATURE:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case SIG_DATA_DESCRIPTOR:
               case SIG_ARCHIVE_EXTRA_DATA:
               case SIG_SPANNING:
                  this.parseFunc = this.parseIdle;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + sig.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function parseLocalfile(stream:IDataInput) : Boolean
      {
         if(this.currentFile.parse(stream))
         {
            if(this.currentFile.hasDataDescriptor)
            {
               this.parseFunc = this.findDataDescriptor;
               this.ddBuffer = new ByteArray();
               this.ddSignature = 0;
               this.ddCompressedSize = 0;
               return true;
            }
            this.onFileLoaded();
            if(this.parseFunc != this.parseIdle)
            {
               this.parseFunc = this.parseSignature;
               return true;
            }
         }
         return false;
      }
      
      protected function findDataDescriptor(stream:IDataInput) : Boolean
      {
         var c:uint = 0;
         while(stream.bytesAvailable > 0)
         {
            c = stream.readUnsignedByte();
            this.ddSignature = this.ddSignature >>> 8 | c << 24;
            if(this.ddSignature == SIG_DATA_DESCRIPTOR)
            {
               this.ddBuffer.length -= 3;
               this.parseFunc = this.validateDataDescriptor;
               return true;
            }
            this.ddBuffer.writeByte(c);
         }
         return false;
      }
      
      protected function validateDataDescriptor(stream:IDataInput) : Boolean
      {
         var ddCRC32:uint = 0;
         var ddSizeCompressed:uint = 0;
         var ddSizeUncompressed:uint = 0;
         if(stream.bytesAvailable >= 12)
         {
            ddCRC32 = stream.readUnsignedInt();
            ddSizeCompressed = stream.readUnsignedInt();
            ddSizeUncompressed = stream.readUnsignedInt();
            if(this.ddBuffer.length == ddSizeCompressed)
            {
               this.ddBuffer.position = 0;
               this.currentFile._crc32 = ddCRC32;
               this.currentFile._sizeCompressed = ddSizeCompressed;
               this.currentFile._sizeUncompressed = ddSizeUncompressed;
               this.currentFile.parseContent(this.ddBuffer);
               this.onFileLoaded();
               this.parseFunc = this.parseSignature;
            }
            else
            {
               this.ddBuffer.writeUnsignedInt(ddCRC32);
               this.ddBuffer.writeUnsignedInt(ddSizeCompressed);
               this.ddBuffer.writeUnsignedInt(ddSizeUncompressed);
               this.parseFunc = this.findDataDescriptor;
            }
            return true;
         }
         return false;
      }
      
      protected function onFileLoaded() : void
      {
         this.filesList.push(this.currentFile);
         if(this.currentFile.filename)
         {
            this.filesDict[this.currentFile.filename] = this.currentFile;
         }
         dispatchEvent(new FZipEvent(FZipEvent.FILE_LOADED,this.currentFile));
         this.currentFile = null;
      }
      
      protected function progressHandler(evt:Event) : void
      {
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.urlStream))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(FZipErrorEvent.PARSE_ERROR))
            {
               throw e;
            }
            dispatchEvent(new FZipErrorEvent(FZipErrorEvent.PARSE_ERROR,e.message));
         }
      }
      
      protected function defaultHandler(evt:Event) : void
      {
         dispatchEvent(evt.clone());
      }
      
      protected function defaultErrorHandler(evt:Event) : void
      {
         this.close();
         dispatchEvent(evt.clone());
      }
      
      protected function addEventHandlers() : void
      {
         this.urlStream.addEventListener(Event.COMPLETE,this.defaultHandler);
         this.urlStream.addEventListener(Event.OPEN,this.defaultHandler);
         this.urlStream.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.defaultHandler);
         this.urlStream.addEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.urlStream.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.urlStream.addEventListener(ProgressEvent.PROGRESS,this.progressHandler);
      }
      
      protected function removeEventHandlers() : void
      {
         this.urlStream.removeEventListener(Event.COMPLETE,this.defaultHandler);
         this.urlStream.removeEventListener(Event.OPEN,this.defaultHandler);
         this.urlStream.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.defaultHandler);
         this.urlStream.removeEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.urlStream.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.urlStream.removeEventListener(ProgressEvent.PROGRESS,this.progressHandler);
      }
   }
}
