package §=!m§
{
   public class §8G§
   {
       
      
      private var §`<§:Number;
      
      private var § 1§:String;
      
      private var §!!8§:Function;
      
      private var §'!q§:Function;
      
      private var §!!0§:Boolean = true;
      
      public function §8G§(param1:String, param2:Number)
      {
         super();
         this.§ 1§ = param1;
         this.§`<§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §2a§() : String
      {
         return this.§ 1§;
      }
      
      public function §4q§() : Function
      {
         return this.§!!8§;
      }
      
      public function §[f§() : Function
      {
         return this.§'!q§;
      }
      
      public function §+"§(param1:Object) : void
      {
         if(this.§!!0§)
         {
            this.§!!8§.call(null,param1);
         }
      }
      
      public function §4!q§(param1:Object) : void
      {
         if(this.§!!0§)
         {
            this.§'!q§.call(null,param1);
         }
      }
      
      public function §>A§(param1:Function, param2:Function = null) : void
      {
         this.§!!8§ = param1;
         this.§'!q§ = param2;
      }
      
      public function §2;§() : void
      {
         this.§!!0§ = false;
      }
      
      public function §2!A§() : void
      {
         this.§!!0§ = true;
      }
   }
}
