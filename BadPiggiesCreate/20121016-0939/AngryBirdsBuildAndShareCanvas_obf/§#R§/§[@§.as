package §#R§
{
   import §'!A§.§-!2§;
   import §7r§.§,!<§;
   import §7r§.§3`§;
   import com.rovio.assets.§>!]§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §[@§ extends Sprite
   {
       
      
      private var §;6§:§,!<§;
      
      private var §`X§:MovieClip;
      
      private var §[N§:MovieClip;
      
      private var §6!K§:Point;
      
      public function §[@§(param1:§,!<§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
         }
         do
         {
            this.§;6§ = param1;
            do
            {
               addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            while(_loc3_ && this);
            
         }
         while(!_loc2_);
         
      }
      
      public function get object() : §,!<§
      {
         return this.§;6§;
      }
      
      public function set object(param1:§,!<§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;6§ = param1;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!stage)
            {
               if(_loc2_)
               {
                  this.§6!K§ = null;
               }
               return;
            }
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
               if(!(this.§;6§.object is §-!2§))
               {
                  this.§'Q§();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        if(this.§6!K§)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              x = this.§6!K§.x;
                           }
                           loop4:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 y = this.§6!K§.y;
                                 continue loop2;
                              }
                              addr139:
                              while(true)
                              {
                                 this.§]?§();
                                 break loop4;
                              }
                           }
                           addr120:
                        }
                        else
                        {
                           x = this.§;6§.x;
                           loop7:
                           while(true)
                           {
                              if(!(_loc3_ && this))
                              {
                                 y = this.§;6§.y;
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       addr54:
                                       if(_loc2_ || param1)
                                       {
                                          while(true)
                                          {
                                             this.§6!K§ = this.§;6§.position;
                                             if(_loc3_ && this)
                                             {
                                                continue loop8;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop7;
                                             }
                                             if(_loc2_)
                                             {
                                                return;
                                             }
                                             §§goto(addr120);
                                             §§goto(addr54);
                                          }
                                          addr23:
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 addr47:
                              }
                           }
                        }
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
               §§goto(addr139);
            }
         }
      }
      
      private function §]?§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:Class = null;
         if(!_loc3_)
         {
            if(this.§`X§ == null)
            {
               if(!_loc3_)
               {
                  addr31:
                  _loc1_ = §>!]§.§1!8§("Popup_glow");
                  if(!(_loc3_ && this))
                  {
                     this.§`X§ = new _loc1_();
                     loop1:
                     while(true)
                     {
                        addr62:
                        while(true)
                        {
                           this.§`X§.width = this.§;6§.width + 50;
                           continue loop1;
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr62);
                  }
                  _loc2_ = §>!]§.§1!8§("button_sparkle");
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§[N§ = new _loc2_();
                     loop5:
                     while(true)
                     {
                        addr122:
                        while(true)
                        {
                           this.§[N§.width = this.§;6§.width + 20;
                           continue loop5;
                        }
                     }
                     addr136:
                  }
                  while(true)
                  {
                     this.§[N§.height = this.§;6§.height + 20;
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr136);
                     }
                     §§goto(addr122);
                  }
                  addr137:
                  this.§`X§.rotation += 0.8;
                  if(!_loc3_)
                  {
                     addChild(this.§`X§);
                  }
                  do
                  {
                     addChild(this.§[N§);
                  }
                  while(_loc3_ && _loc2_);
                  
               }
               return;
            }
            §§goto(addr137);
         }
         §§goto(addr31);
      }
      
      private function §'Q§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Bitmap = new Bitmap(this.§;6§.§'!]§());
         if(_loc2_ || this)
         {
            _loc1_.x = -_loc1_.width / 2;
            while(true)
            {
               _loc1_.y = -_loc1_.height / 2;
            }
            addr96:
         }
         loop1:
         do
         {
            addChild(_loc1_);
            while(_loc2_)
            {
               §3`§.§ !`§(_loc1_.bitmapData,§3`§.§>K§.bitmapData);
               if(!_loc3_)
               {
                  continue loop1;
               }
            }
            §§goto(addr96);
         }
         while(!(_loc2_ || _loc3_));
         
      }
   }
}
