package §1!>§
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
       
      
      protected var §;q§:Array;
      
      protected var §`!;§:Dictionary;
      
      protected var §=l§:URLStream;
      
      protected var §!!C§:String;
      
      protected var §0!R§:Function;
      
      protected var §=!Y§:FZipFile;
      
      protected var §;g§:ByteArray;
      
      protected var §>!V§:uint;
      
      protected var §'9§:uint;
      
      public function FZip(filenameEncoding:String = "utf-8")
      {
         super();
         this.§!!C§ = filenameEncoding;
         this.§0!R§ = this.§5u§;
      }
      
      public function get §]!%§() : Boolean
      {
         return this.§0!R§ !== this.§5u§;
      }
      
      public function load(request:URLRequest) : void
      {
         if(!this.§=l§ && this.§0!R§ == this.§5u§)
         {
            this.§=l§ = new URLStream();
            this.§=l§.endian = Endian.LITTLE_ENDIAN;
            this.§=Z§();
            this.§;q§ = [];
            this.§`!;§ = new Dictionary();
            this.§0!R§ = this.§1S§;
            this.§=l§.load(request);
         }
      }
      
      public function loadBytes(bytes:ByteArray) : void
      {
         if(!this.§=l§ && this.§0!R§ == this.§5u§)
         {
            this.§;q§ = [];
            this.§`!;§ = new Dictionary();
            bytes.position = 0;
            bytes.endian = Endian.LITTLE_ENDIAN;
            this.§0!R§ = this.§1S§;
            if(this.parse(bytes))
            {
               this.§0!R§ = this.§5u§;
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
         if(this.§=l§)
         {
            this.§0!R§ = this.§5u§;
            this.§,!7§();
            this.§=l§.close();
            this.§=l§ = null;
         }
      }
      
      public function §+=§(stream:IDataOutput, includeAdler32:Boolean = false) : void
      {
         var endian:String = null;
         var ba:ByteArray = null;
         var offset:uint = 0;
         var files:uint = 0;
         var i:int = 0;
         var file:FZipFile = null;
         if(stream != null && this.§;q§.length > 0)
         {
            endian = stream.endian;
            ba = new ByteArray();
            stream.endian = ba.endian = Endian.LITTLE_ENDIAN;
            offset = 0;
            files = 0;
            for(i = 0; i < this.§;q§.length; )
            {
               file = this.§;q§[i] as FZipFile;
               if(file != null)
               {
                  file.§+=§(ba,includeAdler32,true,offset);
                  offset += file.§+=§(stream,includeAdler32);
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
      
      public function §@!K§() : uint
      {
         return Boolean(this.§;q§) ? uint(this.§;q§.length) : uint(0);
      }
      
      public function §?!H§(index:uint) : FZipFile
      {
         return Boolean(this.§;q§) ? this.§;q§[index] as FZipFile : null;
      }
      
      public function §"!K§(name:String) : FZipFile
      {
         return Boolean(this.§`!;§[name]) ? this.§`!;§[name] as FZipFile : null;
      }
      
      public function §&!k§(name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         return this.§`U§(Boolean(this.§;q§) ? uint(this.§;q§.length) : uint(0),name,content,doCompress);
      }
      
      public function §=<§(name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         return this.§[d§(Boolean(this.§;q§) ? uint(this.§;q§.length) : uint(0),name,content,charset,doCompress);
      }
      
      public function §`U§(index:uint, name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         if(this.§;q§ == null)
         {
            this.§;q§ = [];
         }
         if(this.§`!;§ == null)
         {
            this.§`!;§ = new Dictionary();
         }
         else if(this.§`!;§[name])
         {
            throw new Error("File already exists: " + name + ". Please remove first.");
         }
         var file:FZipFile = new FZipFile();
         file.§"!a§ = name;
         file.§!!f§(content,doCompress);
         if(index >= this.§;q§.length)
         {
            this.§;q§.push(file);
         }
         else
         {
            this.§;q§.splice(index,0,file);
         }
         this.§`!;§[name] = file;
         return file;
      }
      
      public function §[d§(index:uint, name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         if(this.§;q§ == null)
         {
            this.§;q§ = [];
         }
         if(this.§`!;§ == null)
         {
            this.§`!;§ = new Dictionary();
         }
         else if(this.§`!;§[name])
         {
            throw new Error("File already exists: " + name + ". Please remove first.");
         }
         var file:FZipFile = new FZipFile();
         file.§"!a§ = name;
         file.§'!2§(content,charset,doCompress);
         if(index >= this.§;q§.length)
         {
            this.§;q§.push(file);
         }
         else
         {
            this.§;q§.splice(index,0,file);
         }
         this.§`!;§[name] = file;
         return file;
      }
      
      public function §,i§(index:uint) : FZipFile
      {
         var file:FZipFile = null;
         if(this.§;q§ != null && this.§`!;§ != null && index < this.§;q§.length)
         {
            file = this.§;q§[index] as FZipFile;
            if(file != null)
            {
               this.§;q§.splice(index,1);
               delete this.§`!;§[file.§"!a§];
               return file;
            }
         }
         return null;
      }
      
      protected function parse(stream:IDataInput) : Boolean
      {
         while(this.§0!R§(stream))
         {
         }
         return this.§0!R§ === this.§5u§;
      }
      
      protected function §5u§(stream:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1S§(stream:IDataInput) : Boolean
      {
         var sig:uint = 0;
         if(stream.bytesAvailable >= 4)
         {
            sig = stream.readUnsignedInt();
            switch(sig)
            {
               case SIG_LOCAL_FILE_HEADER:
                  this.§0!R§ = this.§`C§;
                  this.§=!Y§ = new FZipFile(this.§!!C§);
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
                  this.§0!R§ = this.§5u§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + sig.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §`C§(stream:IDataInput) : Boolean
      {
         if(this.§=!Y§.parse(stream))
         {
            if(this.§=!Y§.§-p§)
            {
               this.§0!R§ = this.§&!6§;
               this.§;g§ = new ByteArray();
               this.§>!V§ = 0;
               this.§'9§ = 0;
               return true;
            }
            this.§=!,§();
            if(this.§0!R§ != this.§5u§)
            {
               this.§0!R§ = this.§1S§;
               return true;
            }
         }
         return false;
      }
      
      protected function §&!6§(stream:IDataInput) : Boolean
      {
         for(var c:uint = 0; stream.bytesAvailable > 0; )
         {
            c = stream.readUnsignedByte();
            this.§>!V§ = this.§>!V§ >>> 8 | c << 24;
            if(this.§>!V§ == SIG_DATA_DESCRIPTOR)
            {
               this.§;g§.length -= 3;
               this.§0!R§ = this.§!!O§;
               return true;
            }
            this.§;g§.writeByte(c);
         }
         return false;
      }
      
      protected function §!!O§(stream:IDataInput) : Boolean
      {
         var ddCRC32:uint = 0;
         var ddSizeCompressed:uint = 0;
         var ddSizeUncompressed:uint = 0;
         if(stream.bytesAvailable >= 12)
         {
            ddCRC32 = stream.readUnsignedInt();
            ddSizeCompressed = stream.readUnsignedInt();
            ddSizeUncompressed = stream.readUnsignedInt();
            if(this.§;g§.length == ddSizeCompressed)
            {
               this.§;g§.position = 0;
               this.§=!Y§.§&!H§ = ddCRC32;
               this.§=!Y§.§!!D§ = ddSizeCompressed;
               this.§=!Y§.§14§ = ddSizeUncompressed;
               this.§=!Y§.§<c§(this.§;g§);
               this.§=!,§();
               this.§0!R§ = this.§1S§;
            }
            else
            {
               this.§;g§.writeUnsignedInt(ddCRC32);
               this.§;g§.writeUnsignedInt(ddSizeCompressed);
               this.§;g§.writeUnsignedInt(ddSizeUncompressed);
               this.§0!R§ = this.§&!6§;
            }
            return true;
         }
         return false;
      }
      
      protected function §=!,§() : void
      {
         this.§;q§.push(this.§=!Y§);
         if(this.§=!Y§.§"!a§)
         {
            this.§`!;§[this.§=!Y§.§"!a§] = this.§=!Y§;
         }
         dispatchEvent(new FZipEvent(FZipEvent.FILE_LOADED,this.§=!Y§));
         this.§=!Y§ = null;
      }
      
      protected function §;P§(evt:Event) : void
      {
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§=l§))
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
      
      protected function §0]§(evt:Event) : void
      {
         dispatchEvent(evt.clone());
      }
      
      protected function §5Z§(evt:Event) : void
      {
         this.close();
         dispatchEvent(evt.clone());
      }
      
      protected function §=Z§() : void
      {
         this.§=l§.addEventListener(Event.COMPLETE,this.§0]§);
         this.§=l§.addEventListener(Event.OPEN,this.§0]§);
         this.§=l§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§0]§);
         this.§=l§.addEventListener(IOErrorEvent.IO_ERROR,this.§5Z§);
         this.§=l§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5Z§);
         this.§=l§.addEventListener(ProgressEvent.PROGRESS,this.§;P§);
      }
      
      protected function §,!7§() : void
      {
         this.§=l§.removeEventListener(Event.COMPLETE,this.§0]§);
         this.§=l§.removeEventListener(Event.OPEN,this.§0]§);
         this.§=l§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§0]§);
         this.§=l§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5Z§);
         this.§=l§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5Z§);
         this.§=l§.removeEventListener(ProgressEvent.PROGRESS,this.§;P§);
      }
   }
}
