package flex.lang.reflect.metadata
{
   public class MetaDataAnnotation
   {
       
      
      private var metaData:XML;
      
      private var _name:String;
      
      private var _arguments:Array;
      
      public function MetaDataAnnotation(metaDataXML:XML)
      {
         super();
         if(!metaDataXML)
         {
            throw new ArgumentError("Valid XML must be provided to MetaDataAnnotation Constructor");
         }
         this.metaData = metaDataXML;
         this._name = metaDataXML.@name;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get arguments() : Array
      {
         if(!this._arguments)
         {
            this._arguments = this.buildArguments();
         }
         return this._arguments;
      }
      
      public function get defaultArgument() : MetaDataArgument
      {
         var firstArg:MetaDataArgument = null;
         var arg:MetaDataArgument = null;
         var i:uint = 0;
         var argLen:uint = 0;
         if(this.arguments)
         {
            argLen = this.arguments.length;
            for(i = 0; i < argLen; i++)
            {
               arg = this.arguments[i] as MetaDataArgument;
               if(arg.unpaired)
               {
                  firstArg = arg;
                  break;
               }
            }
         }
         return firstArg;
      }
      
      public function hasArgument(key:String, caseInsensitive:Boolean = false) : Boolean
      {
         return this.getArgument(key,caseInsensitive) != null;
      }
      
      public function getArgument(key:String, caseInsensitive:Boolean = false) : MetaDataArgument
      {
         var hayStackKey:String = null;
         var argsLen:int = this.arguments.length;
         var needleKey:String = key;
         if(caseInsensitive && key)
         {
            needleKey = needleKey.toLowerCase();
         }
         for(var i:int = 0; i < argsLen; i++)
         {
            hayStackKey = (this.arguments[i] as MetaDataArgument).key;
            if(caseInsensitive && hayStackKey)
            {
               hayStackKey = hayStackKey.toLowerCase();
            }
            if(hayStackKey == needleKey)
            {
               return this.arguments[i];
            }
         }
         return null;
      }
      
      protected function buildArguments() : Array
      {
         var i:int = 0;
         arguments = new Array();
         var args:XMLList = this.metaData.arg;
         if(args && args.length())
         {
            for(i = 0; i < args.length(); i++)
            {
               arguments.push(new MetaDataArgument(args[i]));
            }
         }
         return arguments;
      }
      
      public function equals(item:MetaDataAnnotation) : Boolean
      {
         var localLen:int = 0;
         var remoteLen:int = 0;
         var i:int = 0;
         var localArg:MetaDataArgument = null;
         var remoteArg:MetaDataArgument = null;
         if(!item)
         {
            return false;
         }
         var equiv:* = this.name == item.name;
         var localArgs:Array = this.arguments;
         var remoteArgs:Array = item.arguments;
         if(equiv)
         {
            localLen = !!localArgs ? int(localArgs.length) : 0;
            remoteLen = !!remoteArgs ? int(remoteArgs.length) : 0;
            if(localLen != remoteLen)
            {
               return false;
            }
            if(localLen > 0)
            {
               for(i = 0; i < localLen; i++)
               {
                  localArg = localArgs[i];
                  remoteArg = remoteArgs[i];
                  equiv = Boolean(localArg.equals(remoteArg));
                  if(!equiv)
                  {
                     break;
                  }
               }
            }
         }
         return equiv;
      }
   }
}
