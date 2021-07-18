package §1!`§
{
   import each.§!!'§;
   
   public class §2!<§
   {
       
      
      private var §5S§:String;
      
      private var §7!n§:Vector.<Function>;
      
      private var §79§:Boolean;
      
      public function §2!<§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§5S§ = param1;
               while(true)
               {
                  this.§79§ = param3;
                  loop2:
                  for(; !_loc4_; do
                  {
                     this.addCallback(param2);
                  }
                  while(_loc4_ && param2);
                  ,if(_loc4_)
                  {
                     continue;
                  },§§goto(addr25))
                  {
                     while(param2 != null)
                     {
                        if(_loc5_ || param3)
                        {
                           if(_loc5_)
                           {
                              §!!'§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                              continue loop2;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §0" §() : String
      {
         return this.§5S§;
      }
      
      public function §!W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§79§ = param1;
         }
      }
      
      public function §4!E§() : Boolean
      {
         return this.§79§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§7!n§ == null)
            {
               while(true)
               {
                  this.§7!n§ = new Vector.<Function>();
                  addr76:
                  while(true)
                  {
                  }
               }
               addr70:
            }
            while(this.§7!n§.indexOf(param1) == -1)
            {
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     this.§7!n§.push(param1);
                  }
                  else
                  {
                     §§goto(addr70);
                  }
               }
               if(!_loc3_)
               {
                  addr55:
                  break;
               }
               §§goto(addr76);
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §;!A§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§7!n§.indexOf(param1) > -1)
            {
               if(_loc3_)
               {
                  addr52:
                  this.§7!n§.splice(this.§7!n§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §7!+§() : Vector.<Function>
      {
         return this.§7!n§;
      }
   }
}
