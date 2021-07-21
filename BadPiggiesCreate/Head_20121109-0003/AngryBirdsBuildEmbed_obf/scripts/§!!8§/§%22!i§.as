package §!!8§
{
   import § !r§.§`![§;
   import §&!0§.§]!;§;
   
   public class §"!i§
   {
       
      
      public function §"!i§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function get §,!K§() : String
      {
         return "";
      }
      
      public static function §@!Y§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §`![§.log("Rating level");
         }
         §§push(§,!K§);
         if(_loc4_)
         {
            §§push(§§pop() + "/level/rate/");
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §]!;§.sendRequest(_loc3_,"","POST",param2,§8!q§,"application/json");
         }
      }
      
      public static function §8!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`![§.log("Rating FAIL");
         }
      }
      
      public static function §8S§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§,!K§);
         if(!(_loc5_ && §"!i§))
         {
            §§push(§§pop() + "/level/completion/");
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() + param1);
               if(!(_loc5_ && param1))
               {
                  §§goto(addr62);
               }
               §§goto(addr71);
            }
            addr62:
            §§goto(addr74);
         }
         addr74:
         §§push(§§pop() + "/");
         if(!(_loc5_ && §"!i§))
         {
            addr71:
            §§push(§§pop() + param2);
         }
         var _loc3_:String = §§pop();
         if(!(_loc5_ && param1))
         {
            §]!;§.sendRequest(_loc3_,"","POST",§`r§,§-l§,"application/json");
         }
      }
      
      public static function §`r§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§`![§);
            §§push("onLevelCompletion success! ");
            if(!(_loc3_ && §"!i§))
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
         }
         var _loc2_:Object = JSON.parse(param1);
         if(_loc4_)
         {
            §-!D§.§?5§("onLevelCompleted",_loc2_);
         }
      }
      
      public static function §-l§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §`![§.log("Rating FAIL");
         }
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §§push(§]!;§);
            §§push(§,!K§ + "/level/load/");
            if(_loc4_ || §"!i§)
            {
               §§push(§§pop() + param1);
            }
            §§pop().sendRequest(§§pop(),"","POST",param2,param3,"application/json");
         }
      }
      
      public static function §;^§(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = §,!K§ + "/level/save/";
         if(_loc6_ || param3)
         {
            §§push(param1);
            if(!(_loc7_ && param3))
            {
               if(§§pop() != null)
               {
                  if(_loc6_ || param3)
                  {
                     addr64:
                     §§push(_loc5_);
                     if(_loc6_)
                     {
                        addr67:
                        §§push(§§pop() + param1);
                     }
                     _loc5_ = §§pop();
                     if(_loc6_ || §"!i§)
                     {
                        addr78:
                        §]!;§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
                     }
                  }
                  return;
               }
               §§goto(addr78);
            }
            §§goto(addr67);
         }
         §§goto(addr64);
      }
      
      public static function §]!p§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§,!K§);
         if(!(_loc8_ && param3))
         {
            §§push(§§pop() + "/levels/");
            if(_loc7_)
            {
               §§push(§§pop() + param1);
            }
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(!(_loc8_ && §"!i§))
         {
            §]!;§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
         }
      }
   }
}
