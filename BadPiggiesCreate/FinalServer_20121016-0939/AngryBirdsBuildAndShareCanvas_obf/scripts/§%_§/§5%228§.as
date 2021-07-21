package §%_§
{
   import §=!M§.§9!P§;
   import §@!v§.§24§;
   
   public class §5"8§
   {
       
      
      public function §5"8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function get §`!t§() : String
      {
         return "";
      }
      
      public static function §5j§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §9!P§.log("Rating level");
         }
         §§push(§`!t§);
         if(_loc5_ || param1)
         {
            §§push(§§pop() + "/level/rate/");
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || §5"8§)
         {
            §24§.sendRequest(_loc3_,"","POST",param2,§ !X§,"application/json");
         }
      }
      
      public static function § !X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9!P§.log("Rating FAIL");
         }
      }
      
      public static function §'!J§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§`!t§);
         if(_loc5_ || §5"8§)
         {
            §§push(§§pop() + "/level/completion/");
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
               if(!_loc4_)
               {
                  §§push(§§pop() + "/");
                  if(!_loc5_)
                  {
                  }
                  addr50:
                  var _loc3_:String = §§pop();
                  §§goto(addr49);
               }
               §§push(§§pop() + param2);
            }
            addr49:
            if(_loc5_ || param2)
            {
               §24§.sendRequest(_loc3_,"","POST",§ §,§]"1§,"application/json");
            }
            return;
         }
         §§goto(addr50);
      }
      
      public static function § §(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §9!P§.log("onLevelCompletion success! " + param1);
         }
         var _loc2_:Object = JSON.parse(param1);
         if(_loc4_)
         {
            §4m§.doJsCall("onLevelCompleted",_loc2_);
         }
      }
      
      public static function §]"1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §5"8§))
         {
            §9!P§.log("Rating FAIL");
         }
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §5"8§))
         {
            §§push(§24§);
            §§push(§`!t§ + "/level/load/");
            if(!(_loc5_ && §5"8§))
            {
               §§push(§§pop() + param1);
            }
            §§pop().sendRequest(§§pop(),"","POST",param2,param3,"application/json");
         }
      }
      
      public static function § !s§(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = §`!t§ + "/level/save/";
         if(!_loc6_)
         {
            §§push(param1);
            if(!(_loc6_ && §5"8§))
            {
               if(§§pop() != null)
               {
                  addr64:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc7_ || param3)
                     {
                        addr85:
                        §§push(§§pop() + param1);
                        while(true)
                        {
                           _loc5_ = §§pop();
                           addr86:
                           while(true)
                           {
                           }
                        }
                        addr85:
                     }
                     §§goto(addr85);
                  }
                  addr64:
               }
               while(true)
               {
                  §24§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
                  if(_loc6_)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     break;
                  }
                  §§goto(addr64);
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr64);
      }
      
      public static function §6]§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§`!t§);
         if(!_loc8_)
         {
            §§push(§§pop() + "/levels/");
            if(_loc7_ || param3)
            {
               §§push(§§pop() + param1);
            }
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(_loc7_)
         {
            §24§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
         }
      }
   }
}
