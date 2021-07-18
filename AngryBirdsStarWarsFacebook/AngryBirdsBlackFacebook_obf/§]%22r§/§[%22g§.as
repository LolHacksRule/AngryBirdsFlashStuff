package §]"r§
{
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §1"b§.§8"?§;
   import §1"b§.§>l§;
   import com.furusystems.dconsole2.core.style.§`D§;
   import flash.display.Shape;
   
   public class §["g§ extends Shape implements §8"?§
   {
      
      public static const TOP:int = 0;
      
      public static const §var §:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            TOP = 0;
            do
            {
               §var § = 1;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function §["g§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               §>l§.§^#0§(this,§""A§.§7" §,§""A§.§<Y§);
               while(_loc1_ || this)
               {
                  visible = false;
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      public function resize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            graphics.clear();
         }
         while(true)
         {
            graphics.lineStyle(3,§`D§.§1"e§);
            while(!_loc2_)
            {
               graphics.lineTo(stage.stageWidth,0);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function show(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || this)
         {
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(TOP);
               if(_loc3_)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr87:
                              if(§§pop() === _loc2_)
                              {
                                 addr89:
                                 §§push(1);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr97:
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                        }
                        §§goto(addr89);
                     }
                     else
                     {
                        §§push(§var §);
                        if(!_loc4_)
                        {
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr87);
               }
               §§goto(addr97);
            }
            §§goto(addr89);
         }
         addr113:
         switch(§§pop())
         {
            case 0:
               y = 0;
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               §§goto(addr119);
            case 1:
               y = stage.stageHeight - 1;
               if(_loc3_)
               {
                  break;
               }
         }
         visible = true;
         addr119:
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            visible = false;
         }
      }
      
      public function §4"U§(param1:§7",§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.message;
         if(_loc3_ || param1)
         {
            if(§""A§.§7" § !== _loc2_)
            {
               if(§""A§.§<Y§ === _loc2_)
               {
                  §§goto(addr84);
               }
               else
               {
                  §§push(2);
               }
               addr107:
               switch(§§pop())
               {
                  case 0:
                     this.show(param1.data as int);
                     if(!(_loc4_ && param1))
                     {
                        break;
                     }
                     addr42:
                     break;
                  case 1:
                     this.hide();
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr42);
                     }
               }
               return;
            }
            if(!_loc4_)
            {
               addr71:
               §§push(0);
               if(_loc4_ && _loc2_)
               {
               }
            }
            else
            {
               addr84:
               §§push(1);
               if(_loc4_ && this)
               {
               }
            }
            §§goto(addr107);
            §§goto(addr84);
         }
         §§goto(addr71);
      }
   }
}
