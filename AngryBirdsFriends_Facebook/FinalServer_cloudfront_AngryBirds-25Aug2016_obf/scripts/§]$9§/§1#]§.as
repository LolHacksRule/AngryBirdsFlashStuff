package §]$9§
{
   public class §1#]§
   {
       
      
      private var §0$3§:Number;
      
      private var §&!B§:String;
      
      private var §`1§:Function;
      
      private var §<!0§:Function;
      
      private var §+^§:Boolean = true;
      
      public function §1#]§(param1:String, param2:Number)
      {
         super();
         this.§&!B§ = param1;
         this.§0$3§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §8" §() : String
      {
         return this.§&!B§;
      }
      
      public function §3"1§() : Function
      {
         return this.§`1§;
      }
      
      public function §!!_§() : Function
      {
         return this.§<!0§;
      }
      
      public function §2!5§(param1:Object) : void
      {
         if(this.§+^§)
         {
            this.§`1§.call(null,param1);
         }
      }
      
      public function §1#z§(param1:Object) : void
      {
         if(this.§+^§)
         {
            this.§<!0§.call(null,param1);
         }
      }
      
      public function §"F§(param1:Function, param2:Function = null) : void
      {
         this.§`1§ = param1;
         this.§<!0§ = param2;
      }
      
      public function §<#"§() : void
      {
         this.§+^§ = false;
      }
      
      public function §+W§() : void
      {
         this.§+^§ = true;
      }
   }
}
