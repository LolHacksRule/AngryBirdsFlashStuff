package § i§
{
   import §9!G§.§]!e§;
   
   public class §#u§
   {
       
      
      private var §%!o§:String;
      
      private var §+!@§:Vector.<Function>;
      
      private var §8!f§:Boolean;
      
      public function §#u§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§%!o§ = param1;
         this.§8!f§ = param3;
         if(param2 != null)
         {
            §]!e§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §6!]§() : String
      {
         return this.§%!o§;
      }
      
      public function §^!N§(param1:Boolean) : void
      {
         this.§8!f§ = param1;
      }
      
      public function §""4§() : Boolean
      {
         return this.§8!f§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§+!@§ == null)
         {
            this.§+!@§ = new Vector.<Function>();
         }
         if(this.§+!@§.indexOf(param1) == -1)
         {
            this.§+!@§.push(param1);
         }
      }
      
      public function §&n§(param1:Function) : void
      {
         if(this.§+!@§.indexOf(param1) > -1)
         {
            this.§+!@§.splice(this.§+!@§.indexOf(param1),1);
         }
      }
      
      public function §#!1§() : Vector.<Function>
      {
         return this.§+!@§;
      }
   }
}
