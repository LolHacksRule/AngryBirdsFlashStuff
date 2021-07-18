package §]"r§
{
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public final class §2!H§ extends Sprite
   {
       
      
      public var title:String;
      
      private var §#!V§:TextField;
      
      public var data;
      
      public var index:int = -1;
      
      public var §+w§:Boolean;
      
      public function §2!H§(param1:String = "Blah", param2:* = null, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               this.data = param2;
               loop1:
               while(true)
               {
                  this.§+w§ = param3;
                  while(true)
                  {
                     this.title = param1;
                     addr211:
                     while(true)
                     {
                        this.§#!V§ = new TextField();
                        continue loop0;
                     }
                     loop11:
                     while(!(_loc4_ && param3))
                     {
                        this.§#!V§.background = true;
                        loop12:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 while(true)
                                 {
                                    this.§#!V§.textColor = §?#O§.§8#W§;
                                    loop14:
                                    while(_loc5_)
                                    {
                                       this.§#!V§.backgroundColor = §?#O§.§[+§;
                                       while(_loc5_ || param1)
                                       {
                                          this.§0" § = false;
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                if(!_loc4_)
                                                {
                                                   addEventListener(MouseEvent.MOUSE_OVER,this.§!!8§);
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                             continue loop14;
                                          }
                                          continue loop12;
                                       }
                                       while(_loc5_)
                                       {
                                          this.§#!V§.defaultTextFormat = §6!x§.§'#N§;
                                          while(true)
                                          {
                                             this.§#!V§.embedFonts = this.§#!V§.defaultTextFormat.font.charAt(0) != "_";
                                             break loop12;
                                          }
                                          §§goto(addr82);
                                       }
                                       addr82:
                                       continue loop1;
                                    }
                                    continue loop11;
                                 }
                                 return;
                                 addr123:
                              }
                              break;
                              addr106:
                           }
                           addr155:
                           while(true)
                           {
                              this.§#!V§.mouseEnabled = false;
                              §§goto(addr142);
                           }
                        }
                        while(true)
                        {
                           if(_loc5_)
                           {
                              this.§#!V§.text = param1;
                              §§goto(addr155);
                           }
                           break;
                           §§goto(addr106);
                        }
                        §§goto(addr178);
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#!V§.width = param1;
         }
      }
      
      private function set §0" §(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!param1)
            {
               this.§#!V§.textColor = §?#O§.§8#W§;
               while(_loc2_)
               {
                  if(!_loc2_)
                  {
                     this.§#!V§.backgroundColor = §?#O§.§3# §;
                  }
                  else
                  {
                     addr91:
                  }
                  this.§#!V§.backgroundColor = §?#O§.§[+§;
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     §§goto(addr24);
                  }
               }
               addr24:
               return;
            }
         }
         this.§#!V§.textColor = §?#O§.§?"7§;
         §§goto(addr91);
      }
      
      private function §!!8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0" § = true;
         }
      }
      
      private function §3"d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§0" § = false;
         }
      }
      
      public function set background(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!V§.background = param1;
         }
      }
      
      public function §<!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§0" § = false;
         }
      }
   }
}
