package §,0§
{
   import §6Z§.§!!-§;
   import §]"U§.§ !X§;
   import §]"U§.§'#;§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §"#9§ extends Sprite implements §2#M§, §'#;§
   {
       
      
      private var §]!Y§:Boolean = true;
      
      private var §-a§:Boolean = true;
      
      public var inspector:§#A§;
      
      protected var §5Y§:Number;
      
      protected var §""]§:Rectangle;
      
      protected var §%#F§:Sprite;
      
      public function §"#9§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§%#F§ = new Sprite();
            while(true)
            {
               super();
               addr97:
               while(true)
               {
                  this.§%#F§.scrollRect = new Rectangle();
               }
            }
            addr102:
         }
         loop2:
         while(true)
         {
            addChild(this.§%#F§);
            loop3:
            while(true)
            {
               if(_loc2_ && this)
               {
                  continue loop2;
               }
               this.§5Y§ = 0;
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop3;
               }
               §§goto(addr97);
            }
         }
      }
      
      private function §2X§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§4L§();
         }
      }
      
      protected function §4L§() : void
      {
      }
      
      public function §&"'§(param1:§#A§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.inspector = param1;
         }
      }
      
      public function §&!B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(this);
            §§push(this.§&;§);
            if(!_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§&;§ = §§pop();
            do
            {
               §§push(this);
               §§push(this.§-l§);
               if(!_loc4_)
               {
                  §§push(§§pop() - param2);
               }
               §§pop().§-l§ = §§pop();
            }
            while(!_loc3_);
            
         }
      }
      
      public function get §&;§() : Number
      {
         return this.scrollRect.x;
      }
      
      public function get §-l§() : Number
      {
         return this.scrollRect.y;
      }
      
      public function §4R§(param1:Event = null) : void
      {
      }
      
      public function §`V§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = this.scrollRect;
         if(!_loc4_)
         {
            _loc3_.width = param1;
            while(true)
            {
               _loc3_.height = param2;
               loop1:
               while(_loc5_ || param2)
               {
                  this.scrollRect = _loc3_;
                  while(true)
                  {
                     this.§&!B§(0,0);
                     if(!(_loc4_ && param1))
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function get scrollRect() : Rectangle
      {
         return this.§%#F§.scrollRect;
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%#F§.scrollRect = param1;
         }
      }
      
      public function §@#5§(param1:Object) : void
      {
      }
      
      public function set §&;§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:Rectangle = this.scrollRect;
         if(!_loc4_)
         {
            this.§;!<§();
            loop0:
            while(true)
            {
               if(this.§7#3§)
               {
                  loop1:
                  while(true)
                  {
                     _loc2_.x = param1;
                     addr126:
                     while(!_loc4_)
                     {
                        §§push(this.§""]§.width - this.scrollRect.width);
                        if(!(_loc4_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               else
               {
                  _loc2_.x = -this.§5Y§;
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr83);
               }
            }
         }
         §§goto(addr108);
      }
      
      protected function §;!<§() : Rectangle
      {
         return this.§""]§ = this.§%#F§.transform.pixelBounds;
      }
      
      public function get §7#3§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§]!Y§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.§""]§.width > this.scrollRect.width);
                     if(_loc1_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr70:
                     §§push(false);
                  }
               }
               §§goto(addr70);
            }
            return §§pop();
         }
         §§goto(addr70);
      }
      
      public function get §6T§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§-a§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr45:
                     §§push(this.§""]§.height > this.scrollRect.height);
                     if(_loc1_)
                     {
                        §§goto(addr64);
                     }
                  }
                  else
                  {
                     addr65:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr65);
            }
            addr64:
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public function get §9#Q§() : Number
      {
         return this.scrollRect.width;
      }
      
      public function get §-!E§() : Number
      {
         return this.scrollRect.height;
      }
      
      public function set §7#3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]!Y§ = param1;
         }
      }
      
      public function set §6T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-a§ = param1;
         }
      }
      
      public function set §-l§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(!(_loc5_ && _loc3_))
         {
            this.§;!<§();
         }
         var _loc2_:Rectangle = this.scrollRect;
         if(_loc4_ || _loc2_)
         {
            if(!this.§6T§)
            {
               _loc2_.y = -this.§5Y§;
               loop0:
               while(true)
               {
                  if(_loc5_ && _loc3_)
                  {
                     while(!_loc4_)
                     {
                        loop2:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 break;
                              }
                              addr135:
                              while(true)
                              {
                                 _loc2_.y = param1;
                              }
                           }
                           while(true)
                           {
                              §§push(this.§""]§.height - this.scrollRect.height);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc3_ = §§pop();
                              continue loop2;
                           }
                        }
                        _loc2_.y = Math.max(-this.§5Y§,Math.min(_loc2_.y,_loc3_ + this.§5Y§));
                     }
                     continue;
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr135);
         }
         §§goto(addr75);
      }
      
      public function get §2#-§() : Number
      {
         return this.§%#F§.transform.pixelBounds.height - this.scrollRect.height;
      }
      
      public function get §^!"§() : Number
      {
         return this.§%#F§.transform.pixelBounds.width - this.scrollRect.width;
      }
      
      public function §>!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            Mouse.cursor = MouseCursor.HAND;
         }
         do
         {
            mouseChildren = false;
         }
         while(!(_loc2_ || this));
         
      }
      
      public function stopDragging() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            Mouse.cursor = MouseCursor.AUTO;
            do
            {
               mouseChildren = true;
            }
            while(_loc1_);
            
         }
      }
      
      public function resize() : void
      {
      }
      
      public function get view() : §"#9§
      {
         return this;
      }
      
      public function get title() : String
      {
         throw new §!!-§("An inspector view must have a title");
      }
      
      public function update(param1:§ !X§) : void
      {
      }
      
      public function get §6!7§() : String
      {
         throw new §!!-§();
      }
      
      public function initialize(param1:§ !X§) : void
      {
      }
      
      public function shutdown(param1:§ !X§) : void
      {
      }
      
      public function get §&!R§() : Vector.<Class>
      {
         return null;
      }
   }
}
