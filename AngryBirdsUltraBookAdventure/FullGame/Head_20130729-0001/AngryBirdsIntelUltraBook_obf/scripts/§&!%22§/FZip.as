package §&!"§
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
       
      
      protected var §+g§:Array;
      
      protected var §#&§:Dictionary;
      
      protected var §@#§:URLStream;
      
      protected var §?b§:String;
      
      protected var §3Z§:Function;
      
      protected var §8s§:FZipFile;
      
      protected var §!!§:ByteArray;
      
      protected var §^r§:uint;
      
      protected var §5X§:uint;
      
      public function FZip(filenameEncoding:String = "utf-8")
      {
         super();
         this.§?b§ = filenameEncoding;
         this.§3Z§ = this.§'!O§;
      }
      
      public function get §&!^§() : Boolean
      {
         return this.§3Z§ !== this.§'!O§;
      }
      
      public function load(request:URLRequest) : void
      {
         if(!this.§@#§ && this.§3Z§ == this.§'!O§)
         {
            this.§@#§ = new URLStream();
            this.§@#§.endian = Endian.LITTLE_ENDIAN;
            this.§<S§();
            this.§+g§ = [];
            this.§#&§ = new Dictionary();
            this.§3Z§ = this.§,W§;
            this.§@#§.load(request);
         }
      }
      
      public function loadBytes(bytes:ByteArray) : void
      {
         if(!this.§@#§ && this.§3Z§ == this.§'!O§)
         {
            this.§+g§ = [];
            this.§#&§ = new Dictionary();
            bytes.position = 0;
            bytes.endian = Endian.LITTLE_ENDIAN;
            this.§3Z§ = this.§,W§;
            if(this.parse(bytes))
            {
               this.§3Z§ = this.§'!O§;
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
         if(this.§@#§)
         {
            this.§3Z§ = this.§'!O§;
            this.§7n§();
            this.§@#§.close();
            this.§@#§ = null;
         }
      }
      
      public function §!E§(stream:IDataOutput, includeAdler32:Boolean = false) : void
      {
         var endian:String = null;
         var ba:ByteArray = null;
         var offset:uint = 0;
         var files:uint = 0;
         var i:int = 0;
         var file:FZipFile = null;
         if(stream != null && this.§+g§.length > 0)
         {
            endian = stream.endian;
            ba = new ByteArray();
            stream.endian = ba.endian = Endian.LITTLE_ENDIAN;
            offset = 0;
            files = 0;
            for(i = 0; i < this.§+g§.length; )
            {
               file = this.§+g§[i] as FZipFile;
               if(file != null)
               {
                  file.§!E§(ba,includeAdler32,true,offset);
                  offset += file.§!E§(stream,includeAdler32);
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
      
      public function §`!T§() : uint
      {
         return Boolean(this.§+g§) ? uint(this.§+g§.length) : uint(0);
      }
      
      public function §'![§(index:uint) : FZipFile
      {
         return Boolean(this.§+g§) ? this.§+g§[index] as FZipFile : null;
      }
      
      public function §&g§(name:String) : FZipFile
      {
         return Boolean(this.§#&§[name]) ? this.§#&§[name] as FZipFile : null;
      }
      
      public function §"J§(name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         return this.§'O§(Boolean(this.§+g§) ? uint(this.§+g§.length) : uint(0),name,content,doCompress);
      }
      
      public function §?H§(name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         return this.§%b§(Boolean(this.§+g§) ? uint(this.§+g§.length) : uint(0),name,content,charset,doCompress);
      }
      
      public function §'O§(index:uint, name:String, content:ByteArray = null, doCompress:Boolean = true) : FZipFile
      {
         if(this.§+g§ == null)
         {
            this.§+g§ = [];
         }
         if(this.§#&§ == null)
         {
            this.§#&§ = new Dictionary();
         }
         else if(this.§#&§[name])
         {
            throw new Error("File already exists: " + name + ". Please remove first.");
         }
         var file:FZipFile = new FZipFile();
         file.§4F§ = name;
         file.§=!'§(content,doCompress);
         if(index >= this.§+g§.length)
         {
            this.§+g§.push(file);
         }
         else
         {
            this.§+g§.splice(index,0,file);
         }
         this.§#&§[name] = file;
         return file;
      }
      
      public function §%b§(index:uint, name:String, content:String, charset:String = "utf-8", doCompress:Boolean = true) : FZipFile
      {
         if(this.§+g§ == null)
         {
            this.§+g§ = [];
         }
         if(this.§#&§ == null)
         {
            this.§#&§ = new Dictionary();
         }
         else if(this.§#&§[name])
         {
            throw new Error("File already exists: " + name + ". Please remove first.");
         }
         var file:FZipFile = new FZipFile();
         file.§4F§ = name;
         file.§2T§(content,charset,doCompress);
         if(index >= this.§+g§.length)
         {
            this.§+g§.push(file);
         }
         else
         {
            this.§+g§.splice(index,0,file);
         }
         this.§#&§[name] = file;
         return file;
      }
      
      public function §+4§(index:uint) : FZipFile
      {
         var file:FZipFile = null;
         if(this.§+g§ != null && this.§#&§ != null && index < this.§+g§.length)
         {
            file = this.§+g§[index] as FZipFile;
            if(file != null)
            {
               this.§+g§.splice(index,1);
               delete this.§#&§[file.§4F§];
               return file;
            }
         }
         return null;
      }
      
      protected function parse(stream:IDataInput) : Boolean
      {
         while(this.§3Z§(stream))
         {
         }
         return this.§3Z§ === this.§'!O§;
      }
      
      protected function §'!O§(stream:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §,W§(stream:IDataInput) : Boolean
      {
         var sig:uint = 0;
         if(stream.bytesAvailable >= 4)
         {
            sig = stream.readUnsignedInt();
            switch(sig)
            {
               case SIG_LOCAL_FILE_HEADER:
                  this.§3Z§ = this.§6!S§;
                  this.§8s§ = new FZipFile(this.§?b§);
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
                  this.§3Z§ = this.§'!O§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + sig.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §6!S§(stream:IDataInput) : Boolean
      {
         if(this.§8s§.parse(stream))
         {
            if(this.§8s§.§!!N§)
            {
               this.§3Z§ = this.§7!?§;
               this.§!!§ = new ByteArray();
               this.§^r§ = 0;
               this.§5X§ = 0;
               return true;
            }
            this.§?!J§();
            if(this.§3Z§ != this.§'!O§)
            {
               this.§3Z§ = this.§,W§;
               return true;
            }
         }
         return false;
      }
      
      protected function §7!?§(stream:IDataInput) : Boolean
      {
         for(var c:uint = 0; stream.bytesAvailable > 0; )
         {
            c = stream.readUnsignedByte();
            this.§^r§ = this.§^r§ >>> 8 | c << 24;
            if(this.§^r§ == SIG_DATA_DESCRIPTOR)
            {
               this.§!!§.length -= 3;
               this.§3Z§ = this.§7!8§;
               return true;
            }
            this.§!!§.writeByte(c);
         }
         return false;
      }
      
      protected function §7!8§(stream:IDataInput) : Boolean
      {
         var ddCRC32:uint = 0;
         var ddSizeCompressed:uint = 0;
         var ddSizeUncompressed:uint = 0;
         if(stream.bytesAvailable >= 12)
         {
            ddCRC32 = stream.readUnsignedInt();
            ddSizeCompressed = stream.readUnsignedInt();
            ddSizeUncompressed = stream.readUnsignedInt();
            if(this.§!!§.length == ddSizeCompressed)
            {
               this.§!!§.position = 0;
               this.§8s§.§'A§ = ddCRC32;
               this.§8s§.§4!7§ = ddSizeCompressed;
               this.§8s§.§3![§ = ddSizeUncompressed;
               this.§8s§.§&;§(this.§!!§);
               this.§?!J§();
               this.§3Z§ = this.§,W§;
            }
            else
            {
               this.§!!§.writeUnsignedInt(ddCRC32);
               this.§!!§.writeUnsignedInt(ddSizeCompressed);
               this.§!!§.writeUnsignedInt(ddSizeUncompressed);
               this.§3Z§ = this.§7!?§;
            }
            return true;
         }
         return false;
      }
      
      protected function §?!J§() : void
      {
         this.§+g§.push(this.§8s§);
         if(this.§8s§.§4F§)
         {
            this.§#&§[this.§8s§.§4F§] = this.§8s§;
         }
         dispatchEvent(new FZipEvent(FZipEvent.FILE_LOADED,this.§8s§));
         this.§8s§ = null;
      }
      
      protected function §`O§(evt:Event) : void
      {
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§@#§))
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
      
      protected function §=!h§(evt:Event) : void
      {
         dispatchEvent(evt.clone());
      }
      
      protected function §]x§(evt:Event) : void
      {
         this.close();
         dispatchEvent(evt.clone());
      }
      
      protected function §<S§() : void
      {
         this.§@#§.addEventListener(Event.COMPLETE,this.§=!h§);
         this.§@#§.addEventListener(Event.OPEN,this.§=!h§);
         this.§@#§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=!h§);
         this.§@#§.addEventListener(IOErrorEvent.IO_ERROR,this.§]x§);
         this.§@#§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]x§);
         this.§@#§.addEventListener(ProgressEvent.PROGRESS,this.§`O§);
      }
      
      protected function §7n§() : void
      {
         this.§@#§.removeEventListener(Event.COMPLETE,this.§=!h§);
         this.§@#§.removeEventListener(Event.OPEN,this.§=!h§);
         this.§@#§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=!h§);
         this.§@#§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]x§);
         this.§@#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]x§);
         this.§@#§.removeEventListener(ProgressEvent.PROGRESS,this.§`O§);
      }
   }
}
