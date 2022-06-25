package §6!C§
{
   import §-!D§.§4!,§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §+7§
   {
      
      protected static var §9!9§:§4!,§;
      
      protected static var §<!'§:StatePopupManager;
      
      public static var §2>§:Object;
      
      public static var §!4§:Popup;
      
      public static var §#Q§:Boolean;
      
      private static var §"O§:Number;
      
      private static var §]w§:Number;
       
      
      public function §+7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §>!-§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§!4§ == null);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§9!9§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && §+7§))
                  {
                     §§goto(addr49);
                  }
               }
               §<!'§ = new StatePopupManager();
               §9!9§ = new §4!,§(§<!'§);
               §§push(§9!9§);
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr84);
               }
               §§goto(addr98);
            }
            addr84:
            §§pop().init(<xml></xml>,new MovieClip());
            if(_loc2_ || _loc2_)
            {
               addr98:
               §9!9§.§@2§();
               param1.addChild(§9!9§.container.mClip);
            }
            return;
         }
         addr49:
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§9!9§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr35:
                     §§push(§9!9§);
                     if(_loc4_)
                     {
                        §§push(param1);
                        if(_loc4_ || §+7§)
                        {
                           §§pop().viewWidth = §§pop();
                           §§goto(addr69);
                        }
                        §§pop().viewHeight = §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr69);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr60);
                  }
               }
               addr69:
               if(_loc4_)
               {
                  addr60:
                  §§push(§9!9§);
                  §§push(param2);
               }
               §"O§ = param1;
               if(_loc4_)
               {
                  addr74:
                  §]w§ = param2;
               }
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr35);
      }
      
      public static function §?%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §4g§(new §6!G§(§9!9§,param1));
         }
      }
      
      public static function §2!9§() : void
      {
         try
         {
            §4g§(new §`G§(§9!9§,§<!'§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §4g§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§!4§);
         if(!(_loc3_ && §+7§))
         {
            §§push(§§pop() is §';§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  return;
               }
               §§push(§!4§);
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr39);
               }
               §§goto(addr55);
            }
            §§goto(addr90);
         }
         addr39:
         if(§§pop())
         {
            if(_loc4_ || param1)
            {
               §§push(§!4§);
               if(!(_loc3_ && param2))
               {
                  addr55:
                  §§push(§§pop() is §`G§);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           §§pop();
                           §§push(param1 is §';§);
                           if(_loc3_ && _loc3_)
                           {
                           }
                           addr90:
                           if(§§pop())
                           {
                              return;
                           }
                           addr93:
                           §!4§.deActivate();
                           if(!_loc3_)
                           {
                              §§goto(addr96);
                           }
                           §§goto(addr116);
                        }
                     }
                  }
                  §§goto(addr90);
                  §§push(!§§pop());
               }
               §§goto(addr93);
            }
            §§goto(addr116);
         }
         addr96:
         §!4§ = param1;
         if(_loc4_ || §+7§)
         {
            addr116:
            param1.open(param2);
            if(_loc4_ || param2)
            {
               §§goto(addr126);
            }
            §§goto(addr139);
         }
         addr126:
         param1.mClip.addEventListener(§%n§.§<6§,§4s§);
         if(_loc4_ || param1)
         {
            addr139:
            setViewSize(§"O§,§]w§);
         }
      }
      
      private static function §4s§(param1:§%n§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.§]`§ == §!4§)
            {
               if(!_loc3_)
               {
                  addr24:
                  §!4§ = null;
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
