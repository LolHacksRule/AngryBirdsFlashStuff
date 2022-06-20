package §7"1§
{
   public class §4#Y§
   {
       
      
      private var §0"J§:Number;
      
      private var §`"u§:String;
      
      private var §5#j§:Function;
      
      private var §;$<§:Function;
      
      private var §6"4§:Boolean = true;
      
      public function §4#Y§(param1:String, param2:Number)
      {
         super();
         this.§`"u§ = param1;
         this.§0"J§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §?$'§() : String
      {
         return this.§`"u§;
      }
      
      public function §#!N§() : Function
      {
         return this.§5#j§;
      }
      
      public function §8"D§() : Function
      {
         return this.§;$<§;
      }
      
      public function §0"A§(param1:Object) : void
      {
         if(this.§6"4§)
         {
            this.§5#j§.call(null,param1);
         }
      }
      
      public function §<$=§(param1:Object) : void
      {
         if(this.§6"4§)
         {
            this.§;$<§.call(null,param1);
         }
      }
      
      public function §'!=§(param1:Function, param2:Function = null) : void
      {
         this.§5#j§ = param1;
         this.§;$<§ = param2;
      }
      
      public function §>Y§() : void
      {
         this.§6"4§ = false;
      }
      
      public function §'#m§() : void
      {
         this.§6"4§ = true;
      }
   }
}
