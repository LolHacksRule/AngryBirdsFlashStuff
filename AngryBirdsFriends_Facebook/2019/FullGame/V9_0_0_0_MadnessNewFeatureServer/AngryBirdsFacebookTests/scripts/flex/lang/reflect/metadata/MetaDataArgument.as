package flex.lang.reflect.metadata
{
   public class MetaDataArgument
   {
       
      
      private var argument:XML;
      
      private var _key:String;
      
      private var _value:String;
      
      private var _unpaired:Boolean = false;
      
      public function MetaDataArgument(argumentXML:XML)
      {
         super();
         if(!argumentXML)
         {
            throw new ArgumentError("Valid XML must be provided to MetaDataArgument Constructor");
         }
         this.argument = argumentXML;
         var potentialKey:String = this.argument.@key;
         this._value = this.argument.@value;
         if(potentialKey && potentialKey.length > 0)
         {
            this._key = potentialKey;
         }
         else if(this._value && this._value.length > 0)
         {
            this._unpaired = true;
            this._key = this._value;
            this._value = "true";
         }
         else
         {
            this._key = this.argument.@key;
         }
      }
      
      public function get key() : String
      {
         return this._key;
      }
      
      public function get value() : String
      {
         return this._value;
      }
      
      public function get unpaired() : Boolean
      {
         return this._unpaired;
      }
      
      public function equals(item:MetaDataArgument) : Boolean
      {
         return this.key == item.key && this.value == item.value;
      }
   }
}
