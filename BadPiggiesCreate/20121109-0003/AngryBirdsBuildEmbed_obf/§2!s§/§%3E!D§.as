package §2!s§
{
   import §%=§.§1!H§;
   import §%=§.§2_§;
   import §%=§.§`k§;
   import §-u§.DisplayObjectUpdater;
   import §-u§.MovieClipUpdater;
   import §1O§.§59§;
   import §3§.§3!T§;
   import §3§.§?!>§;
   import §4!7§.§%!m§;
   import §4!r§.§7R§;
   import §4!r§.§[!m§;
   import §64§.§ 3§;
   import §64§.§%r§;
   import §64§.§6!D§;
   import §64§.§=!g§;
   import §64§.§@!m§;
   import §;!,§.§#>§;
   import §;!,§.§3!u§;
   import §;!,§.§;!p§;
   import §;!,§.§=!I§;
   import §;0§.§@!E§;
   import §?!4§.§=Y§;
   import §?!4§.§@!b§;
   import §?!4§.§^4§;
   import §]s§.§&[§;
   import §^g§.§@!'§;
   import §^g§.§`X§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import §true §.§0F§;
   import §true §.§@q§;
   
   public class §>!D§
   {
      
      private static var §;$§:§&[§;
      
      private static var § 7§:§3!T§;
      
      private static var §5!§:§%!m§;
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            VERSION = "0.2 (Alpha)";
            if(!(_loc1_ && _loc1_))
            {
               §5!§ = new §59§();
               §5!§.start();
               if(!_loc1_)
               {
                  §;$§ = new §&[§();
                  if(_loc2_ || §>!D§)
                  {
                     § 7§ = new §3!T§(§;$§);
                     addr78:
                     §?!>§.§-V§(§;$§);
                     if(_loc2_ || _loc2_)
                     {
                        addr88:
                        DisplayObjectUpdater.§-V§(§;$§);
                     }
                  }
               }
               MovieClipUpdater.§-V§(§;$§);
               §@!E§.§-V§(§;$§);
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr88);
      }
      
      public function §>!D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §=Y§
      {
         return new §1!H§(§5!§,param1,param2);
      }
      
      public static function §8!s§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §=Y§
      {
         return new §`k§(§5!§,param1,param2,param3,param4,param5);
      }
      
      public static function §+a§(... rest) : §^4§
      {
         return §]"§(rest);
      }
      
      public static function scale(param1:§=Y§, param2:Number) : §=Y§
      {
         return new §=!g§(param1 as §#>§,param2);
      }
      
      public static function §]"§(param1:Array) : §^4§
      {
         return new §@q§(param1,§5!§,0);
      }
      
      public static function §2i§(param1:Object, param2:Object, param3:Object = null, param4:§[!m§ = null) : §@!b§
      {
         var _loc5_:§;!p§;
         (_loc5_ = new §;!p§(§5!§)).§`I§ = § 7§.§!!U§(param1,param2,param3,param4 || §@!'§.§7<§());
         return _loc5_;
      }
      
      public static function §`!9§(param1:DisplayObject) : §=Y§
      {
         return new §2_§(§5!§,param1);
      }
      
      public static function slice(param1:§=Y§, param2:Number, param3:Number, param4:Boolean = false) : §=Y§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || §>!D§)
         {
            if(param4)
            {
               if(!(_loc5_ && §>!D§))
               {
                  §§push(param1.duration);
                  §§push(param2);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop() * §§pop()));
                     if(!_loc5_)
                     {
                        param2 = §§pop();
                        if(!(_loc5_ && param3))
                        {
                           addr60:
                           §§push(param1.duration);
                           §§push(param3);
                           if(_loc6_ || param1)
                           {
                              addr70:
                              §§push(Number(§§pop() * §§pop()));
                              if(!_loc5_)
                              {
                                 §§goto(addr74);
                              }
                           }
                        }
                        §§goto(addr93);
                     }
                     addr74:
                     param3 = §§pop();
                     if(_loc6_ || param2)
                     {
                        addr93:
                        if(param2 > param3)
                        {
                           if(!(_loc5_ && param2))
                           {
                              §§goto(addr102);
                           }
                        }
                     }
                     return new §@!m§(param1 as §#>§,param2,param3);
                  }
                  §§goto(addr70);
               }
               addr102:
               return new §6!D§(new §@!m§(param1 as §#>§,param3,param2),0);
            }
            §§goto(addr93);
         }
         §§goto(addr60);
      }
      
      public static function repeat(param1:§=Y§, param2:uint) : §=Y§
      {
         return new § 3§(param1 as §#>§,param2);
      }
      
      public static function §?L§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§[!m§ = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§;!p§;
         (_loc6_ = new §;!p§(§5!§)).§`I§ = § 7§.§!!U§(param1,param2,param3,param5 || §@!'§.§7<§());
         if(!_loc7_)
         {
            _loc6_.update(param4);
         }
      }
      
      public static function §4!U§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§7R§ = null) : §@!b§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§=!I§;
         (_loc7_ = new §=!I§(§5!§)).§`I§ = § 7§.§^`§(param1,param2,param3,param4);
         if(!(_loc9_ && param1))
         {
            _loc7_.time = param5;
            if(!(_loc9_ && §>!D§))
            {
               §§push(_loc7_);
               if(!_loc9_)
               {
                  §§pop().§-;§ = param6 || §`X§.§!!G§;
                  §§goto(addr78);
               }
               §§goto(addr74);
            }
         }
         addr78:
         return _loc7_;
      }
      
      public static function §5y§(param1:Object, param2:Object, param3:§[!m§ = null) : §@!b§
      {
         var _loc4_:§;!p§;
         (_loc4_ = new §;!p§(§5!§)).§`I§ = § 7§.§!!U§(param1,null,param2,param3 || §@!'§.§7<§());
         return _loc4_;
      }
      
      public static function delay(param1:§=Y§, param2:Number, param3:Number = 0.0) : §=Y§
      {
         return new §%r§(param1 as §#>§,param2,param3);
      }
      
      public static function reverse(param1:§=Y§, param2:Boolean = true) : §=Y§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param2)
            {
               addr20:
               §§push(param1.duration);
               if(_loc4_)
               {
                  §§push(§§pop() - param1.position);
                  if(_loc4_ || param1)
                  {
                     addr34:
                     §§push(Number(§§pop()));
                     if(!(_loc5_ && §>!D§))
                     {
                        addr69:
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr69);
                  }
                  else
                  {
                     addr61:
                     §§push(Number(§§pop()));
                     if(!(_loc5_ && param1))
                     {
                        §§goto(addr69);
                     }
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     if(param1 is §6!D§)
                     {
                        if(_loc4_ || param2)
                        {
                           return new §3!u§((param1 as §6!D§).§-C§,_loc3_);
                           addr84:
                        }
                        else
                        {
                           addr115:
                           param1 = (param1 as §3!u§).§-C§;
                        }
                     }
                     else if((param1 as Object).constructor == §3!u§)
                     {
                        §§goto(addr115);
                     }
                     return new §6!D§(param1 as §#>§,_loc3_);
                  }
                  §§goto(addr84);
               }
               §§goto(addr34);
            }
            else
            {
               §§push(0);
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr61);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr20);
      }
      
      public static function §9!j§(param1:Object, param2:Object, param3:Number = 1.0, param4:§7R§ = null) : §@!b§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§=!I§;
         (_loc5_ = new §=!I§(§5!§)).§`I§ = § 7§.§%!o§(param1,null,param2);
         if(_loc7_)
         {
            _loc5_.time = param3;
            if(_loc7_ || param1)
            {
               §§push(_loc5_);
               if(_loc7_)
               {
                  §§pop().§-;§ = param4 || §`X§.§!!G§;
                  §§goto(addr73);
               }
               §§goto(addr69);
            }
         }
         addr73:
         return _loc5_;
      }
      
      public static function §-8§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§7R§ = null) : §@!b§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§=!I§;
         (_loc6_ = new §=!I§(§5!§)).§`I§ = § 7§.§%!o§(param1,param2,param3);
         if(!_loc8_)
         {
            _loc6_.time = param4;
            if(!(_loc8_ && param1))
            {
               §§push(_loc6_);
               if(!(_loc8_ && param2))
               {
                  §§pop().§-;§ = param5 || §`X§.§!!G§;
                  §§goto(addr77);
               }
               §§goto(addr73);
            }
         }
         addr77:
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§7R§ = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§=!I§;
         (_loc7_ = new §=!I§(§5!§)).§`I§ = § 7§.§%!o§(param1,param2,param3);
         if(_loc9_)
         {
            _loc7_.time = param4;
            if(_loc9_)
            {
               §§push(_loc7_);
               if(_loc9_ || param3)
               {
                  §§pop().§-;§ = param6 || §`X§.§!!G§;
                  if(_loc9_ || param2)
                  {
                     _loc7_.update(param5);
                  }
                  §§goto(addr83);
               }
               §§goto(addr69);
            }
         }
         addr83:
      }
      
      public static function §3!+§(param1:Object, param2:Object, param3:§[!m§ = null) : §@!b§
      {
         var _loc4_:§;!p§;
         (_loc4_ = new §;!p§(§5!§)).§`I§ = § 7§.§!!U§(param1,param2,null,param3 || §@!'§.§7<§());
         return _loc4_;
      }
      
      public static function §^#§(... rest) : §^4§
      {
         return §0!S§(rest);
      }
      
      public static function §>+§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§7R§ = null) : §@!b§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§=!I§;
         (_loc6_ = new §=!I§(§5!§)).§`I§ = § 7§.§^`§(param1,null,param2,param3);
         if(_loc7_ || param2)
         {
            _loc6_.time = param4;
            if(!_loc8_)
            {
               addr61:
               §§push(_loc6_);
               if(!_loc8_)
               {
                  §§pop().§-;§ = param5 || §`X§.§!!G§;
                  §§goto(addr73);
               }
               §§goto(addr69);
            }
            addr73:
            return _loc6_;
         }
         §§goto(addr61);
      }
      
      public static function §?!Z§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§7R§ = null) : §@!b§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§=!I§;
         (_loc6_ = new §=!I§(§5!§)).§`I§ = § 7§.§^`§(param1,param2,null,param3);
         if(!(_loc7_ && §>!D§))
         {
            _loc6_.time = param4;
            if(!(_loc7_ && param3))
            {
               §§push(_loc6_);
               if(_loc8_)
               {
                  §§pop().§-;§ = param5 || §`X§.§!!G§;
                  §§goto(addr79);
               }
               §§goto(addr75);
            }
         }
         addr79:
         return _loc6_;
      }
      
      public static function §`!H§(param1:Object, param2:Object, param3:Number = 1.0, param4:§7R§ = null) : §@!b§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§=!I§;
         (_loc5_ = new §=!I§(§5!§)).§`I§ = § 7§.§%!o§(param1,param2,null);
         if(!(_loc6_ && param1))
         {
            _loc5_.time = param3;
            if(!(_loc6_ && param2))
            {
               addr66:
               §§push(_loc5_);
               if(!(_loc6_ && param1))
               {
                  §§pop().§-;§ = param4 || §`X§.§!!G§;
                  §§goto(addr83);
               }
               §§goto(addr79);
            }
            addr83:
            return _loc5_;
         }
         §§goto(addr66);
      }
      
      public static function §0!S§(param1:Array) : §^4§
      {
         return new §0F§(param1,§5!§,0);
      }
   }
}
