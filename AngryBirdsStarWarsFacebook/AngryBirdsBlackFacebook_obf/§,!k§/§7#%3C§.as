package §,!k§
{
   import §+!J§.§""A§;
   import §1"b§.§>l§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.strings.§2!Q§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §7#<§ extends Sprite
   {
       
      
      private var §4!z§:Point;
      
      private var §#"Y§:Point;
      
      private var §5"d§:§>l§;
      
      public function §7#<§(param1:§!!%§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4!z§ = new Point();
            loop0:
            while(true)
            {
               this.§#"Y§ = new Point();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§5"d§ = param1.§]"z§;
                     loop6:
                     while(!(_loc3_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        graphics.beginFill(§?#O§.§,"-§);
                        loop7:
                        for(; _loc2_; loop9:
                        while(_loc2_ || this)
                        {
                           graphics.lineTo(0,§>"!§.§6R§);
                           loop10:
                           for(; _loc2_; if(_loc3_ && this)
                           {
                              continue;
                           },§§goto(addr63))
                           {
                              buttonMode = true;
                              loop11:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
                                    loop12:
                                    while(true)
                                    {
                                       addEventListener(MouseEvent.MOUSE_OVER,this.§!!8§);
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop10;
                                          }
                                          continue loop12;
                                          addr63:
                                          addEventListener(MouseEvent.MOUSE_OUT,this.§3"d§);
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   return;
                                                }
                                                continue loop9;
                                                continue loop9;
                                             }
                                             continue loop11;
                                          }
                                       }
                                       continue loop10;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr123);
                                 }
                              }
                              §§goto(addr163);
                           }
                           continue loop6;
                        })
                        {
                           if(_loc2_)
                           {
                              graphics.moveTo(§>"!§.§6R§,0);
                              while(true)
                              {
                                 graphics.lineTo(§>"!§.§6R§,§>"!§.§6R§);
                                 continue loop7;
                              }
                              addr123:
                           }
                           else
                           {
                              while(true)
                              {
                                 alpha = 0.8;
                                 addr163:
                                 while(true)
                                 {
                                    graphics.beginFill(0,0);
                                    break loop7;
                                 }
                              }
                              addr169:
                           }
                        }
                        while(true)
                        {
                           graphics.drawRect(0,0,§>"!§.§6R§,§>"!§.§6R§);
                           continue loop6;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      private function §3"d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§5"d§.§#!"§(§""A§.§'N§);
         }
      }
      
      private function §!!8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§5"d§.§#!"§(§""A§.§1!$§,§2!Q§.§&#"§.get(§2!Q§.§&#"§.§!!4§),this);
         }
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            alpha = 1;
            loop0:
            while(true)
            {
               stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
               do
               {
                  stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
                  continue loop0;
               }
               while(!(_loc2_ || this));
               
            }
         }
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4!z§.x = stage.mouseX - this.§#"Y§.x;
            while(true)
            {
               this.§4!z§.y = stage.mouseY - this.§#"Y§.y;
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  loop2:
                  while(true)
                  {
                     this.§#"Y§.x = stage.mouseX;
                     while(true)
                     {
                        this.§#"Y§.y = stage.mouseY;
                        while(!(_loc3_ && param1))
                        {
                           this.§5"d§.§#!"§(§""A§.§`#D§,this.§4!z§,this);
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr90);
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            alpha = 0.8;
            loop0:
            while(true)
            {
               this.§4!z§.x = stage.mouseX - this.§#"Y§.x;
               loop1:
               while(true)
               {
                  this.§4!z§.y = stage.mouseY - this.§#"Y§.y;
                  while(!_loc2_)
                  {
                     this.§#"Y§.x = stage.mouseX;
                     while(!_loc2_)
                     {
                        this.§#"Y§.y = stage.mouseY;
                        while(_loc3_ || this)
                        {
                           this.§5"d§.§#!"§(§""A§.§""C§,this.§4!z§,this);
                           if(!_loc2_)
                           {
                              addr35:
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr42:
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
                                       continue loop1;
                                       §§goto(addr42);
                                    }
                                    addr91:
                                 }
                                 return;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr91);
      }
   }
}
