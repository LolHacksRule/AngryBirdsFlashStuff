package §<"8§
{
   import §0N§.§2!@§;
   import flash.external.ExternalInterface;
   
   public class §6!c§
   {
      
      public static var §'!'§:Boolean = true;
      
      private static var §"<§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!'§ = true;
            do
            {
               §"<§ = {};
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function §6!c§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         try
         {
            if(!§"<§[param1])
            {
               if(_loc4_)
               {
                  §"<§[param1] = new §"I§(param1);
                  if(!(_loc5_ && param1))
                  {
                     addr45:
                     (§"<§[param1] as §"I§).addCallback(param2);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr45);
         }
         catch(e:Error)
         {
         }
         addr74:
      }
      
      public static function §@!`§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(§"<§[param1])
            {
               if(!_loc3_)
               {
                  (§"<§[param1] as §"I§).§@!`§(param2);
               }
            }
         }
      }
      
      public static function §?!6§(param1:String, ... rest) : *
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  break;
               }
               §§pop().§§slot[2] = rest;
               if(_loc6_)
               {
                  continue;
               }
               while(true)
               {
                  §§push(§2!@§);
                  §§push("ExternalInterface call: " + call);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + "(");
                  }
                  §§push(§§pop() + params.join(", "));
                  if(_loc5_)
                  {
                     §§push(§§pop() + ");");
                  }
                  §§pop().log(§§pop());
                  while(true)
                  {
                     §§push(Boolean(ExternalInterface.available));
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        §§goto(addr91);
                     }
                  }
                  try
                  {
                     params.unshift(call);
                     if(!(_loc6_ && rest))
                     {
                        return ExternalInterface.call.apply(null,params);
                     }
                  }
                  catch(e:Error)
                  {
                     §§push(§2!@§);
                     §§push("ExternalInterface call failed!\nCall was:" + call);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop() + "\nError data:");
                     }
                     §§pop().log(§§pop() + e.toString());
                  }
                  addr91:
                  if(§§pop())
                  {
                     break loop3;
                  }
                  return;
               }
            }
         }
      }
   }
}
