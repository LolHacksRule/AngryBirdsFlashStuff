package §&!0§
{
   import § !r§.§`![§;
   
   public class §?M§
   {
       
      
      private var §0!t§:String;
      
      private var §,l§:Vector.<Function>;
      
      private var §"j§:Boolean;
      
      public function §?M§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            if(!(_loc4_ && this))
            {
               this.§0!t§ = param1;
               if(!_loc4_)
               {
                  §§goto(addr43);
               }
            }
            §§goto(addr49);
         }
         addr43:
         this.§"j§ = param3;
         if(param2 != null)
         {
            addr49:
            §`![§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            if(_loc5_)
            {
               this.addCallback(param2);
            }
         }
      }
      
      public function §!;§() : String
      {
         return this.§0!t§;
      }
      
      public function §6c§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§"j§ = param1;
         }
      }
      
      public function §=^§() : Boolean
      {
         return this.§"j§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§,l§ == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§,l§ = new Vector.<Function>();
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr74);
            }
            if(this.§,l§.indexOf(param1) == -1)
            {
               if(_loc2_ || this)
               {
                  this.§,l§.push(param1);
               }
            }
         }
         addr74:
      }
      
      public function § s§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§,l§.indexOf(param1) > -1)
            {
               if(!(_loc2_ && this))
               {
                  addr42:
                  this.§,l§.splice(this.§,l§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function §!K§() : Vector.<Function>
      {
         return this.§,l§;
      }
   }
}
