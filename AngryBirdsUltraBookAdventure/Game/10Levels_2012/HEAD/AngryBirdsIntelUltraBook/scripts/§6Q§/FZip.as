package §6Q§
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
   
   [Event(name="securityError",type="flash.events.SecurityErrorEvent")]
   [Event(name="progress",type="flash.events.ProgressEvent")]
   [Event(name="open",type="flash.events.Event")]
   [Event(name="ioError",type="flash.events.IOErrorEvent")]
   [Event(name="httpStatus",type="flash.events.HTTPStatusEvent")]
   [Event(name="complete",type="flash.events.Event")]
   [Event(name="parseError",type="deng.fzip.FZipErrorEvent")]
   [Event(name="fileLoaded",type="deng.fzip.FZipEvent")]
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
       
      
      protected var §<Y§:Array;
      
      protected var §+x§:Dictionary;
      
      protected var §?3§:URLStream;
      
      protected var §!o§:String;
      
      protected var §,!6§:Function;
      
      protected var §"!X§:FZipFile;
      
      protected var §7!k§:ByteArray;
      
      protected var §5! §:uint;
      
      protected var §<J§:uint;
      
      public function FZip(filenameEncoding:String = "utf-8")
      {
         super();
         this.§!o§ = filenameEncoding;
         this.§,!6§ = this.§&O§;
      }
      
      public function get §83§() : Boolean
      {
         return this.§,!6§ !== this.§&O§;
      }
      
      public function load(request:URLRequest) : void
      {
         if(!this.§?3§ && this.§,!6§ == this.§&O§)
         {
            this.§?3§ = new URLStream();
            this.§?3§.endian = Endian.LITTLE_ENDIAN;
            this.§5!1§();
            this.§<Y§ = [];
            this.§+x§ = new Dictionary();
            this.§,!6§ = this.§`!g§;
            this.§?3§.load(request);
         }
      }
      
      public function loadBytes(bytes:ByteArray) : void
      {
         if(!this.§?3§ && this.§,!6§ == this.§&O§)
         {
            this.§<Y§ = [];
            this.§+x§ = new Dictionary();
            bytes.position = 0;
            bytes.endian = Endian.LITTLE_ENDIAN;
            this.§,!6§ = this.§`!g§;
            if(this.parse(bytes))
            {
               this.§,!6§ = this.§&O§;
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
         if(this.§?3§)
         {
            this.§,!6§ = this.§&O§;
            this.§5!5§();
            this.§?3§.close();
            this.§?3§ = null;
         }
      }
      
      public function §%f§(stream:IDataOutput, includeAdler32:Boolean = false) : void
      {
         var endian:String = null;
         var ba:ByteArray = null;
         var offset:uint = 0;
         var files:uint = 0;
         var i:int = 0;
         var file:FZipFile = null;
         if(stream != null && this.§<Y§.length > 0)
         {
            endian = stream.endian;
            ba = new ByteArray();
            stream.endian = ba.endian = Endian.LITTLE_ENDIAN;
            offset = 0;
            files = 0;
            for(i = 0; i < this.§<Y§.length; )
            {
               file = this.§<Y§[i] as FZipFile;
               if(file != null)
               {
                  file.§%f§(ba,includeAdler32,true,offset);
                  offset += file.§%f§(stream,includeAdler32);
                  files++;
               }
               i++;
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
      
      public function §[;§() : uint
      {
         return Boolean(this.§<Y§) ? uint(this.§<Y§.length) : uint(0);
      }
      
      public function §`V§(index:uint) : FZipFile
      {
         return Boolean(this.§<Y§) ? this.§<Y§[index] as FZipFile : null;
      }
      
      public function §"w§(name:String) : FZipFile
      {
         return Boolean(this.§+x§[name]) ? this.§+x§[name] as FZipFile : null;
      }
      
      public function § !=§(name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         return this.§0!W§(Boolean(this.§<Y§) ? uint(this.§<Y§.length) : uint(0),name,content,doCompress);
      }
      
      public function §7!X§(name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         return this.§@!b§(Boolean(this.§<Y§) ? uint(this.§<Y§.length) : uint(0),name,content,charset,doCompress);
      }
      
      public function §0!W§(index:uint, name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         if(this.§<Y§ == null)
         {
            this.§<Y§ = [];
         }
         if(this.§+x§ == null)
         {
            this.§+x§ = new Dictionary();
         }
         else if(this.§+x§[name])
         {
            throw new Error("File already exists: " + name + ". Please remove first.");
         }
         var file:FZipFile = new FZipFile();
         file.§2!e§ = name;
         file.§]!]§(content,doCompress);
         if(index >= this.§<Y§.length)
         {
            this.§<Y§.push(file);
         }
         else
         {
            this.§<Y§.splice(index,0,file);
         }
         this.§+x§[name] = file;
         return file;
      }
      
      public function §@!b§(index:uint, name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         if(this.§<Y§ == null)
         {
            this.§<Y§ = [];
         }
         if(this.§+x§ == null)
         {
            this.§+x§ = new Dictionary();
         }
         else if(this.§+x§[name])
         {
            throw new Error("File already exists: " + name + ". Please remove first.");
         }
         var file:FZipFile = new FZipFile();
         file.§2!e§ = name;
         file.§%!R§(content,charset,doCompress);
         if(index >= this.§<Y§.length)
         {
            this.§<Y§.push(file);
         }
         else
         {
            this.§<Y§.splice(index,0,file);
         }
         this.§+x§[name] = file;
         return file;
      }
      
      public function §5y§(index:uint) : FZipFile
      {
         var file:FZipFile = null;
         if(this.§<Y§ != null && this.§+x§ != null && index < this.§<Y§.length)
         {
            file = this.§<Y§[index] as FZipFile;
            if(file != null)
            {
               this.§<Y§.splice(index,1);
               delete this.§+x§[file.§2!e§];
               return file;
            }
         }
         return null;
      }
      
      protected function parse(stream:IDataInput) : Boolean
      {
         while(this.§,!6§(stream))
         {
         }
         return this.§,!6§ === this.§&O§;
      }
      
      protected function §&O§(stream:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §`!g§(stream:IDataInput) : Boolean
      {
         var sig:uint = 0;
         if(stream.bytesAvailable >= 4)
         {
            sig = stream.readUnsignedInt();
            switch(sig)
            {
               case SIG_LOCAL_FILE_HEADER:
                  this.§,!6§ = this.§]!M§;
                  this.§"!X§ = new FZipFile(this.§!o§);
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
                  this.§,!6§ = this.§&O§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + sig.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §]!M§(stream:IDataInput) : Boolean
      {
         if(this.§"!X§.parse(stream))
         {
            if(this.§"!X§.§,%§)
            {
               this.§,!6§ = this.§?!5§;
               this.§7!k§ = new ByteArray();
               this.§5! § = 0;
               this.§<J§ = 0;
               return true;
            }
            this.§>B§();
            if(this.§,!6§ != this.§&O§)
            {
               this.§,!6§ = this.§`!g§;
               return true;
            }
         }
         return false;
      }
      
      protected function §?!5§(stream:IDataInput) : Boolean
      {
         for(var c:uint = 0; stream.bytesAvailable > 0; )
         {
            c = stream.readUnsignedByte();
            this.§5! § = this.§5! § >>> 8 | c << 24;
            if(this.§5! § == SIG_DATA_DESCRIPTOR)
            {
               this.§7!k§.length -= 3;
               this.§,!6§ = this.§`!i§;
               return true;
            }
            this.§7!k§.writeByte(c);
         }
         return false;
      }
      
      protected function §`!i§(stream:IDataInput) : Boolean
      {
         var ddCRC32:uint = 0;
         var ddSizeCompressed:uint = 0;
         var ddSizeUncompressed:uint = 0;
         if(stream.bytesAvailable >= 12)
         {
            ddCRC32 = stream.readUnsignedInt();
            ddSizeCompressed = stream.readUnsignedInt();
            ddSizeUncompressed = stream.readUnsignedInt();
            if(this.§7!k§.length == ddSizeCompressed)
            {
               this.§7!k§.position = 0;
               this.§"!X§.§ e§ = ddCRC32;
               this.§"!X§.§"i§ = ddSizeCompressed;
               this.§"!X§.§,!T§ = ddSizeUncompressed;
               this.§"!X§.§4W§(this.§7!k§);
               this.§>B§();
               this.§,!6§ = this.§`!g§;
            }
            else
            {
               this.§7!k§.writeUnsignedInt(ddCRC32);
               this.§7!k§.writeUnsignedInt(ddSizeCompressed);
               this.§7!k§.writeUnsignedInt(ddSizeUncompressed);
               this.§,!6§ = this.§?!5§;
            }
            return true;
         }
         return false;
      }
      
      protected function §>B§() : void
      {
         this.§<Y§.push(this.§"!X§);
         if(this.§"!X§.§2!e§)
         {
            this.§+x§[this.§"!X§.§2!e§] = this.§"!X§;
         }
         dispatchEvent(new FZipEvent(FZipEvent.FILE_LOADED,this.§"!X§));
         this.§"!X§ = null;
      }
      
      protected function §;2§(evt:Event) : void
      {
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§?3§))
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
      
      protected function §[P§(evt:Event) : void
      {
         dispatchEvent(evt.clone());
      }
      
      protected function §,G§(evt:Event) : void
      {
         this.close();
         dispatchEvent(evt.clone());
      }
      
      protected function §5!1§() : void
      {
         this.§?3§.addEventListener(Event.COMPLETE,this.§[P§);
         this.§?3§.addEventListener(Event.OPEN,this.§[P§);
         this.§?3§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§[P§);
         this.§?3§.addEventListener(IOErrorEvent.IO_ERROR,this.§,G§);
         this.§?3§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,G§);
         this.§?3§.addEventListener(ProgressEvent.PROGRESS,this.§;2§);
      }
      
      protected function §5!5§() : void
      {
         this.§?3§.removeEventListener(Event.COMPLETE,this.§[P§);
         this.§?3§.removeEventListener(Event.OPEN,this.§[P§);
         this.§?3§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§[P§);
         this.§?3§.removeEventListener(IOErrorEvent.IO_ERROR,this.§,G§);
         this.§?3§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,G§);
         this.§?3§.removeEventListener(ProgressEvent.PROGRESS,this.§;2§);
      }
   }
}
