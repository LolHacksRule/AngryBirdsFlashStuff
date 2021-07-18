package §]"r§
{
   import §!!c§.§]# §;
   import §1"b§.§7",§;
   import com.furusystems.dconsole2.core.style.§7"h§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §[O§ extends Sprite implements §]# §
   {
      
      public static const §;# §:int = 0;
      
      public static const §const§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §[O§))
         {
            §;# § = 0;
         }
         do
         {
            §const§ = 1;
         }
         while(!_loc1_);
         
      }
      
      private var §0"0§:int;
      
      public var §`!S§:Number = 4;
      
      public var §1o§:Number = 4;
      
      public var §^h§:Number;
      
      private var length:Number = 0;
      
      public var §[-§:Number = 0;
      
      private var §14§:Number = 0;
      
      private var §+!d§:Number;
      
      private var § #3§:uint;
      
      public var §&!F§:Boolean = true;
      
      private var §>6§:uint = 0;
      
      public function §[O§(param1:int)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^h§ = this.§1o§;
         }
         loop0:
         while(true)
         {
            this.§ #3§ = §?#O§.§;"5§;
            loop1:
            while(true)
            {
               super();
               loop2:
               for(; !_loc2_; if(!(_loc2_ && _loc2_))
               {
                  return;
               })
               {
                  this.§0"0§ = param1;
                  loop3:
                  while(true)
                  {
                     buttonMode = true;
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        continue loop3;
                        addr69:
                        addEventListener(MouseEvent.MOUSE_DOWN,this.startDragging);
                        if(_loc3_ || param1)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      private function startDragging(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<j§);
         }
         loop0:
         while(true)
         {
            stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
            do
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(!this.§&!F§)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(if(!_loc4_)
            {
               this.§+!d§ = mouseY;
            }, !_loc3_);
            
            loop2:
            while(true)
            {
               §§push(this.§0"0§);
               if(_loc3_ || _loc2_)
               {
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     §§push(§;# §);
                     if(_loc3_)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr127:
                                 §§push(0);
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    addr154:
                                 }
                              }
                              else
                              {
                                 addr146:
                                 §§push(1);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr154);
                                 }
                              }
                              addr170:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§14§ = mouseY - this.§+!d§;
                                    if(_loc3_ || param1)
                                    {
                                       break loop2;
                                    }
                                    break loop2;
                                 case 1:
                                    this.§14§ = mouseX - this.§+!d§;
                                    if(!_loc3_)
                                    {
                                       return;
                                    }
                                    if(true)
                                    {
                                       break loop2;
                                    }
                                    continue;
                                    addr175:
                              }
                              addr169:
                           }
                           else
                           {
                              §§push(§const§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(_loc2_);
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr154);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr146);
                        }
                        else
                        {
                           §§push(2);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr127);
               }
               §§goto(addr170);
            }
            this.§<j§();
            §§goto(addr175);
         }
      }
      
      private function stopDragging(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<j§);
            do
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      private function §<j§(param1:MouseEvent = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§0"0§);
         if(!(_loc4_ && _loc3_))
         {
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(§;# §);
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc3_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_)
                        {
                           §§goto(addr104);
                        }
                        §§goto(addr123);
                     }
                     else
                     {
                        §§push(§const§);
                        if(_loc3_ || this)
                        {
                           §§goto(addr121);
                        }
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr121);
               }
               §§goto(addr112);
            }
            addr104:
            §§push(0);
            if(_loc4_ && _loc2_)
            {
               addr121:
               if(§§pop() === _loc2_)
               {
                  addr123:
                  §§push(1);
                  if(_loc3_ || param1)
                  {
                     addr131:
                  }
               }
               else
               {
                  §§push(2);
               }
            }
            else
            {
               addr112:
            }
            §§goto(addr137);
         }
         addr137:
         switch(§§pop())
         {
            case 0:
               this.§[-§ = Math.max(0,Math.min(1,(mouseY - this.§14§) / (this.length - this.§1o§)));
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
               addr65:
               break;
            case 1:
               this.§[-§ = Math.max(0,Math.min(1,(mouseX - this.§14§) / (this.length - this.§1o§)));
               if(_loc3_)
               {
                  §§goto(addr65);
               }
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function draw(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.length = param1;
            while(true)
            {
               graphics.clear();
               while(_loc6_ || param1)
               {
                  graphics.beginFill(§?#O§.§=m§);
                  loop2:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        param2 = Math.min(param3,param2);
                        if(_loc6_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     §§push(this.§0"0§);
                     if(!(_loc5_ && param1))
                     {
                        var _loc4_:* = §§pop();
                        if(!(_loc5_ && param3))
                        {
                           §§push(§;# §);
                           if(_loc6_)
                           {
                              §§push(_loc4_);
                              if(_loc6_ || this)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       addr266:
                                       §§push(0);
                                       if(!(_loc5_ && this))
                                       {
                                          addr309:
                                          loop9:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.§1o§ = this.§^h§;
                                                §§push(this);
                                                §§push(param2);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(param3);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         addr182:
                                                         §§push(param1);
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            addr178:
                                                            §§push(§§pop() - this.§1o§);
                                                         }
                                                         §§pop().§+!d§ = §§pop() * §§pop();
                                                         if(_loc6_)
                                                         {
                                                            graphics.drawRect(0,0,this.§`!S§,param1);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               graphics.beginFill(§?#O§.§;"5§);
                                                               addr129:
                                                               while(true)
                                                               {
                                                                  graphics.drawRect(0,this.§+!d§,this.§`!S§,this.§1o§);
                                                                  continue loop4;
                                                               }
                                                            }
                                                            break;
                                                            addr138:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                   §§goto(addr178);
                                                }
                                                §§goto(addr182);
                                                addr193:
                                             case 1:
                                                this.§1o§ = this.§^h§;
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(param2);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(param3);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            addr77:
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§pop().§+!d§ = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            break loop9;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr77);
                                                }
                                          }
                                          return;
                                          addr308:
                                       }
                                       else
                                       {
                                          addr283:
                                          if(§§pop() !== _loc4_)
                                          {
                                             §§goto(addr308);
                                             §§push(2);
                                          }
                                          §§goto(addr308);
                                       }
                                       §§goto(addr308);
                                    }
                                    §§push(1);
                                    if(_loc5_ && param3)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(§const§);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§goto(addr283);
                                    }
                                 }
                                 §§goto(addr308);
                              }
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr266);
                     }
                     §§goto(addr309);
                  }
               }
            }
         }
         §§goto(addr211);
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc2_:§7"h§ = §7"h§(param1.§@Z§);
      }
   }
}
