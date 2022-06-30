package §^V§
{
   import §@R§.§4,§;
   
   public class §;a§
   {
       
      
      private var §4![§:String;
      
      private var §^!-§:Vector.<Function>;
      
      private var §8!Q§:Boolean;
      
      public function §;a§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§4![§ = param1;
         this.§8!Q§ = param3;
         if(param2 != null)
         {
            §4,§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §2!!§() : String
      {
         return this.§4![§;
      }
      
      public function §?!L§(param1:Boolean) : void
      {
         this.§8!Q§ = param1;
      }
      
      public function §+f§() : Boolean
      {
         return this.§8!Q§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§^!-§ == null)
         {
            this.§^!-§ = new Vector.<Function>();
         }
         if(this.§^!-§.indexOf(param1) == -1)
         {
            this.§^!-§.push(param1);
         }
      }
      
      public function §-=§(param1:Function) : void
      {
         if(this.§^!-§.indexOf(param1) > -1)
         {
            this.§^!-§.splice(this.§^!-§.indexOf(param1),1);
         }
      }
      
      public function §%!Y§() : Vector.<Function>
      {
         return this.§^!-§;
      }
   }
}
