package §#!&§
{
   import §^=§.§8!6§;
   
   public class §?2§
   {
       
      
      private var §'!L§:String;
      
      private var §!T§:Vector.<Function>;
      
      private var §&!L§:Boolean;
      
      public function §?2§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§'!L§ = param1;
         this.§&!L§ = param3;
         if(param2 != null)
         {
            §8!6§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §&!$§() : String
      {
         return this.§'!L§;
      }
      
      public function §^! §(param1:Boolean) : void
      {
         this.§&!L§ = param1;
      }
      
      public function §!a§() : Boolean
      {
         return this.§&!L§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§!T§ == null)
         {
            this.§!T§ = new Vector.<Function>();
         }
         if(this.§!T§.indexOf(param1) == -1)
         {
            this.§!T§.push(param1);
         }
      }
      
      public function §1§(param1:Function) : void
      {
         if(this.§!T§.indexOf(param1) > -1)
         {
            this.§!T§.splice(this.§!T§.indexOf(param1),1);
         }
      }
      
      public function § each§() : Vector.<Function>
      {
         return this.§!T§;
      }
   }
}
