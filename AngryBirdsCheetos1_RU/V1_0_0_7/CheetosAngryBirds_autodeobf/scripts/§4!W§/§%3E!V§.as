package §4!W§
{
   import §'D§.§8e§;
   
   public class §>!V§
   {
       
      
      private var §'M§:String;
      
      private var §%#§:Vector.<Function>;
      
      private var §6@§:Boolean;
      
      public function §>!V§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§'M§ = param1;
         this.§6@§ = param3;
         if(param2 != null)
         {
            §8e§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §7i§() : String
      {
         return this.§'M§;
      }
      
      public function §?8§(param1:Boolean) : void
      {
         this.§6@§ = param1;
      }
      
      public function §2!5§() : Boolean
      {
         return this.§6@§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§%#§ == null)
         {
            this.§%#§ = new Vector.<Function>();
         }
         if(this.§%#§.indexOf(param1) == -1)
         {
            this.§%#§.push(param1);
         }
      }
      
      public function §#"§(param1:Function) : void
      {
         if(this.§%#§.indexOf(param1) > -1)
         {
            this.§%#§.splice(this.§%#§.indexOf(param1),1);
         }
      }
      
      public function §,!G§() : Vector.<Function>
      {
         return this.§%#§;
      }
   }
}
