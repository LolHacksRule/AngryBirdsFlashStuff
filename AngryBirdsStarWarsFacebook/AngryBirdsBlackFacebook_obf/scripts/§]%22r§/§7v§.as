package §]"r§
{
   import §!!c§.§]# §;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §;!h§.§&"z§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §7v§ extends Sprite implements §]# §
   {
       
      
      private var §;#S§:TextField;
      
      private var §#L§:§!!%§;
      
      public function §7v§(param1:§!!%§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(!(_loc3_ && _loc2_))
            {
               this.§#L§ = param1;
               if(_loc4_ || _loc3_)
               {
                  mouseEnabled = mouseChildren = false;
                  if(_loc4_)
                  {
                     this.§;#S§ = §@D§.§3!x§("Help");
                     loop0:
                     while(true)
                     {
                        this.§;#S§.autoSize = TextFieldAutoSize.LEFT;
                        while(true)
                        {
                           this.§;#S§.height = §>"!§.§6R§;
                           while(true)
                           {
                              this.§;#S§.textColor = §?#O§.§3"!§;
                              loop3:
                              while(!_loc3_)
                              {
                                 this.§;#S§.backgroundColor = §?#O§.§[!R§;
                                 loop4:
                                 while(true)
                                 {
                                    filters = [§&"z§.§%;§];
                                    addr174:
                                    while(_loc4_)
                                    {
                                       this.§;#S§.background = true;
                                       while(!_loc3_)
                                       {
                                          addChild(this.§;#S§).y = -§>"!§.§6R§ * 1.5;
                                          while(_loc4_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr159);
            }
            §§goto(addr138);
         }
         §§goto(addr67);
      }
      
      private function §0"G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.hide();
         }
      }
      
      private function §4!4§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§;!f§(String(param1.data),stage.mouseX,stage.mouseY);
         }
      }
      
      public function §;!f§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().length < 1);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     while(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§;#S§.text = param1;
                           loop3:
                           while(true)
                           {
                              visible = true;
                              do
                              {
                                 stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                              while(!_loc5_);
                              
                              if(_loc5_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        if(!_loc4_)
                        {
                           return;
                        }
                        break;
                     }
                     return;
                     addr82:
                  }
               }
               addr104:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
            addr97:
         }
         while(true)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop() == " ");
               if(!_loc5_)
               {
                  continue;
               }
            }
            else
            {
               §§goto(addr97);
            }
            §§goto(addr82);
         }
      }
      
      private function §[#8§(param1:MouseEvent = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            x = stage.mouseX + §>"!§.§6R§;
            do
            {
               y = stage.mouseY;
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            visible = false;
            do
            {
               stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§;#S§.textColor = §?#O§.§3"!§;
         }
         do
         {
            this.§;#S§.backgroundColor = §?#O§.§[!R§;
         }
         while(_loc2_ && _loc3_);
         
      }
   }
}
