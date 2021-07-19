package §05§
{
   import §6]§.§,"0§;
   import §^!m§.§[v§;
   
   public class §7!W§
   {
       
      
      public function §7!W§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function get §#!m§() : String
      {
         return "";
      }
      
      public static function §'6§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §,"0§.log("Rating level");
         }
         §§push(§#!m§);
         if(_loc5_ || param2)
         {
            §§push(§§pop() + "/level/rate/");
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §[v§.sendRequest(_loc3_,"","POST",param2,§?"4§,"application/json");
         }
      }
      
      public static function §?"4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §,"0§.log("Rating FAIL");
         }
      }
      
      public static function §!!5§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§#!m§);
         if(_loc4_)
         {
            §§push(§§pop() + "/level/completion/");
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
               if(_loc4_)
               {
                  §§push(§§pop() + "/");
                  if(_loc5_ && _loc3_)
                  {
                  }
                  addr49:
                  var _loc3_:String = §§pop();
                  §§goto(addr48);
               }
               §§push(§§pop() + param2);
            }
            addr48:
            if(!_loc5_)
            {
               §[v§.sendRequest(_loc3_,"","POST",§2" §,§,!+§,"application/json");
            }
            return;
         }
         §§goto(addr49);
      }
      
      public static function §2" §(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §7!W§)
         {
            §,"0§.log("onLevelCompletion success! " + param1);
         }
         var _loc2_:Object = JSON.parse(param1);
         if(!_loc4_)
         {
            §?s§.doJsCall("onLevelCompleted",_loc2_);
         }
      }
      
      public static function §,!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §,"0§.log("Rating FAIL");
         }
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §7!W§)
         {
            §§push(§[v§);
            §§push(§#!m§ + "/level/load/");
            if(_loc5_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().sendRequest(§§pop(),"","POST",param2,param3,"application/json");
         }
      }
      
      public static function §4" §(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = §#!m§ + "/level/save/";
         if(!_loc7_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc6_)
                     {
                        addr79:
                        §§push(§§pop() + param1);
                        while(true)
                        {
                           _loc5_ = §§pop();
                           addr80:
                           while(true)
                           {
                           }
                        }
                        addr79:
                     }
                     §§goto(addr79);
                  }
                  addr73:
               }
               while(true)
               {
                  §[v§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
                  if(!(_loc6_ || param3))
                  {
                     continue;
                  }
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§goto(addr73);
               }
               return;
               addr57:
            }
            §§goto(addr79);
         }
         §§goto(addr57);
      }
      
      public static function §0l§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§#!m§);
         if(!(_loc7_ && param2))
         {
            §§push(§§pop() + "/levels/");
            if(_loc8_ || param3)
            {
               §§push(§§pop() + param1);
            }
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(_loc8_ || param1)
         {
            §[v§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
         }
      }
   }
}
