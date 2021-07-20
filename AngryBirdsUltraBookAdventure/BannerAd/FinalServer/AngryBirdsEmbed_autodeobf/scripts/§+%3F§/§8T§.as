package §+?§
{
   import §+!"§.§5!<§;
   
   public class §8T§
   {
       
      
      private var §9!9§:String;
      
      private var §[!?§:Vector.<Function>;
      
      private var §72§:Boolean;
      
      public function §8T§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§9!9§ = param1;
         this.§72§ = param3;
         if(param2 != null)
         {
            §5!<§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §2<§() : String
      {
         return this.§9!9§;
      }
      
      public function §0[§(param1:Boolean) : void
      {
         this.§72§ = param1;
      }
      
      public function §]v§() : Boolean
      {
         return this.§72§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§[!?§ == null)
         {
            this.§[!?§ = new Vector.<Function>();
         }
         if(this.§[!?§.indexOf(param1) == -1)
         {
            this.§[!?§.push(param1);
         }
      }
      
      public function §?`§(param1:Function) : void
      {
         if(this.§[!?§.indexOf(param1) > -1)
         {
            this.§[!?§.splice(this.§[!?§.indexOf(param1),1);
         }
      }
      
      public function §%!A§() : Vector.<Function>
      {
         return this.§[!?§;
      }
   }
}
