package §2!&§
{
   import §24§.;
   
   public class §?M§
   {
       
      
      private var §7m§:String;
      
      private var §;9§:Vector.<Function>;
      
      private var §'!K§:Boolean;
      
      public function §?M§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§7m§ = param1;
            while(true)
            {
               this.§'!K§ = param3;
               continue loop0;
               addr56:
               if(_loc4_ || this)
               {
                  §#7§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                  while(!(_loc5_ && param1))
                  {
                     this.addCallback(param2);
                     if(_loc4_ || param2)
                     {
                        addr24:
                        return;
                     }
                  }
                  continue loop0;
                  addr66:
               }
            }
         }
      }
      
      public function §0Y§() : String
      {
         return this.§7m§;
      }
      
      public function §!"&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§'!K§ = param1;
         }
      }
      
      public function §5"5§() : Boolean
      {
         return this.§'!K§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§;9§ == null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§;9§ = new Vector.<Function>();
                  addr87:
                  while(true)
                  {
                  }
                  addr87:
               }
               §§goto(addr87);
            }
            while(this.§;9§.indexOf(param1) == -1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§;9§.push(param1);
               }
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr87);
            }
            return;
         }
         §§goto(addr87);
      }
      
      public function §[u§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§;9§.indexOf(param1) > -1)
            {
               if(_loc2_)
               {
                  addr46:
                  this.§;9§.splice(this.§;9§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §@!,§() : Vector.<Function>
      {
         return this.§;9§;
      }
   }
}
