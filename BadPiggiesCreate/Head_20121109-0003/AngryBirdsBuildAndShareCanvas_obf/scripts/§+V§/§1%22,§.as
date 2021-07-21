package §+V§
{
   import §7t§.§-!7§;
   import §7t§.§<^§;
   import §@y§.§0"4§;
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §1",§ extends Sprite
   {
       
      
      private var §,E§:§<^§;
      
      private var §+a§:MovieClip;
      
      private var §"X§:MovieClip;
      
      private var §4!h§:Point;
      
      public function §1",§(param1:§<^§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§,E§ = param1;
            while(_loc3_)
            {
               addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function get object() : §<^§
      {
         return this.§,E§;
      }
      
      public function set object(param1:§<^§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§,E§ = param1;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!stage)
            {
               if(!_loc2_)
               {
                  addr179:
                  this.§4!h§ = null;
               }
               return;
            }
            loop0:
            while(true)
            {
               if(numChildren > 0)
               {
                  removeChildAt(0);
                  continue;
               }
               loop1:
               while(true)
               {
                  if(!(this.§,E§.object is §0"4§))
                  {
                     this.§19§();
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(this.§4!h§)
                           {
                              loop7:
                              while(true)
                              {
                                 x = this.§4!h§.x;
                                 loop8:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       y = this.§4!h§.y;
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc2_ && param1)
                                          {
                                             continue loop0;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             this.§4!h§ = this.§,E§.position;
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break loop3;
                                                         }
                                                         break loop8;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop9;
                                             }
                                             addr67:
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   continue loop2;
                                                }
                                                continue loop6;
                                             }
                                             continue loop1;
                                          }
                                          addr116:
                                          while(true)
                                          {
                                             this.§="'§();
                                             break loop8;
                                          }
                                       }
                                    }
                                    §§goto(addr145);
                                 }
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                           else
                           {
                              x = this.§,E§.x;
                           }
                           while(true)
                           {
                              y = this.§,E§.y;
                              §§goto(addr67);
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr145);
               }
            }
         }
         §§goto(addr179);
      }
      
      private function §="'§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:Class = null;
         if(!_loc4_)
         {
            if(this.§+a§ == null)
            {
               if(!(_loc4_ && this))
               {
                  addr35:
                  _loc1_ = §69§.§ 0§("Popup_glow");
                  if(_loc3_ || _loc2_)
                  {
                     this.§+a§ = new _loc1_();
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           this.§+a§.width = this.§,E§.width + 50;
                           do
                           {
                              this.§+a§.height = this.§,E§.height + 50;
                           }
                           while(!(_loc3_ || _loc1_));
                           
                           if(_loc3_ || _loc1_)
                           {
                              while(false)
                              {
                                 continue loop2;
                              }
                              _loc2_ = §69§.§ 0§("button_sparkle");
                              if(_loc3_ || _loc1_)
                              {
                                 this.§"X§ = new _loc2_();
                                 loop5:
                                 while(true)
                                 {
                                    addr124:
                                    while(true)
                                    {
                                       this.§"X§.width = this.§,E§.width + 20;
                                       continue loop5;
                                    }
                                 }
                              }
                              while(false)
                              {
                                 §§goto(addr124);
                              }
                              addr146:
                              this.§+a§.rotation += 0.8;
                              if(_loc3_)
                              {
                                 addChild(this.§+a§);
                              }
                              do
                              {
                                 addChild(this.§"X§);
                              }
                              while(_loc4_);
                              
                              return;
                              addr71:
                              addr183:
                           }
                           break;
                        }
                     }
                  }
                  §§goto(addr71);
               }
               §§goto(addr183);
            }
            §§goto(addr146);
         }
         §§goto(addr35);
      }
      
      private function §19§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Bitmap = new Bitmap(this.§,E§.§'!#§());
         if(_loc3_ || _loc2_)
         {
            _loc1_.x = -_loc1_.width / 2;
         }
         while(true)
         {
            _loc1_.y = -_loc1_.height / 2;
            while(_loc3_)
            {
               addChild(_loc1_);
               while(!(_loc2_ && this))
               {
                  §-!7§.§[s§(_loc1_.bitmapData,§-!7§.§;#§.bitmapData);
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
