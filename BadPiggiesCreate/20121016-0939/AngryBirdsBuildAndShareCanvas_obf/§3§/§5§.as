package §3§
{
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import com.rovio.assets.§>!]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §5§ extends §9§
   {
      
      private static const §58§:Number = 0.001;
      
      private static const §,@§:uint = 9292;
      
      private static const §?S§:Number = 0.6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §5§)
         {
            §58§ = 0.001;
         }
         while(true)
         {
            §,@§ = 9292;
            while(_loc1_ || _loc2_)
            {
               §?S§ = 0.6;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §!8§:Sprite;
      
      private var §["<§:DisplayObject;
      
      private var §4!$§:MovieClip;
      
      private var §8!R§:DisplayObject;
      
      private var §%y§:Vector.<DisplayObject>;
      
      private var §<"#§:Boolean = false;
      
      private var §%!,§:§3^§;
      
      public function §5§()
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            super();
            loop0:
            while(true)
            {
               this.§!8§ = new Sprite();
               loop1:
               while(true)
               {
                  addChild(this.§!8§);
                  while(true)
                  {
                     this.§["<§ = new §>!]§.§1!8§("night_gradient")();
                     loop3:
                     for(; _loc3_ || _loc1_; while(!(_loc4_ && _loc1_))
                     {
                        continue loop1;
                     })
                     {
                        this.§["<§.alpha = 1;
                        while(true)
                        {
                           this.§8!R§ = new §>!]§.§1!8§("moon")();
                           addr78:
                           while(true)
                           {
                              addChild(this.§8!R§);
                              continue loop3;
                           }
                        }
                     }
                  }
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     loop8:
                     do
                     {
                        this.§8!R§.x = this.§8!R§.width;
                        while(_loc3_)
                        {
                           this.§%y§ = new Vector.<DisplayObject>();
                           if(!_loc3_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop8;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr56);
                        }
                        §§goto(addr94);
                     }
                     while(false);
                     
                     var _loc1_:int = 0;
                     while(_loc1_ < 10)
                     {
                        _loc1_++;
                        if(_loc4_ && _loc1_)
                        {
                           break;
                        }
                     }
                     var _loc2_:Class = §>!]§.§1!8§("TextField_StabilityTimer");
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§4!$§ = new _loc2_();
                        do
                        {
                           addChild(this.§4!$§);
                        }
                        while(!(_loc3_ || this));
                        
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.onAddedToStage(param1);
            loop0:
            while(true)
            {
               this.center();
               while(true)
               {
                  this.setText("");
                  loop2:
                  for(; !_loc3_; while(_loc2_ || this)
                  {
                     this.§<"#§ = false;
                     §§goto(addr96);
                     §§goto(addr36);
                  })
                  {
                     this.§!8§.alpha = 0;
                     while(true)
                     {
                        this.§["<§.y = -this.§["<§.height;
                        continue loop2;
                        loop7:
                        while(!(_loc3_ && param1))
                        {
                           while(true)
                           {
                              this.§%!,§.play();
                              if(!(_loc3_ && param1))
                              {
                                 if(_loc2_)
                                 {
                                    addr36:
                                    if(_loc2_ || _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 addr96:
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    this.§%!,§ = §7!E§.§2=§.§<!C§(this.§8!R§,{"y":80},{"y":-300},1.5,§7!E§.§8""§);
                                    continue loop7;
                                 }
                                 while(!_loc3_)
                                 {
                                    this.§8!R§.y = -100;
                                    §§goto(addr84);
                                 }
                                 addr84:
                                 continue loop0;
                              }
                              continue loop7;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      private function center() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §=!X§.§7,§();
         var _loc2_:int = §=!X§.§3?§();
         if(_loc3_)
         {
            this.§!8§.graphics.clear();
            while(true)
            {
               this.§!8§.graphics.beginFill(§,@§,1);
               while(_loc3_)
               {
                  this.§!8§.graphics.drawRect(0,0,_loc1_,_loc2_);
                  while(!(_loc4_ && _loc2_))
                  {
                     this.§!8§.graphics.endFill();
                     loop3:
                     while(_loc3_)
                     {
                        while(true)
                        {
                           this.§["<§.width = this.§!8§.width;
                           do
                           {
                              this.§4!$§.x = _loc1_ / 2 - this.§4!$§.width / 2;
                              do
                              {
                                 this.§4!$§.y = _loc2_ / 3;
                              }
                              while(_loc4_);
                              
                           }
                           while(!_loc3_);
                           
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      override public function update(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(this.§<"#§)
            {
               addr26:
               §§push(-1);
               if(_loc3_)
               {
                  addr33:
                  §§push(int(§§pop()));
               }
            }
            else
            {
               §§push(1);
               if(_loc3_)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               this.§!8§.alpha = Math.max(0,Math.min(§?S§,this.§!8§.alpha + _loc2_ * param1 * §58§));
               do
               {
                  this.§["<§.y = -this.§["<§.height + this.§!8§.alpha / §?S§ * this.§["<§.height;
               }
               while(!_loc3_);
               
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function §]"8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§<"#§ = true;
            do
            {
               this.§!7§();
               do
               {
                  this.setText("Fail!");
               }
               while(_loc1_ && this);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function §81§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§<"#§ = true;
         }
         do
         {
            this.§!7§();
            do
            {
               this.setText("Done!");
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private function §!7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§%!,§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§%!,§);
                     addr99:
                     while(true)
                     {
                        §§pop().stop();
                        addr100:
                        while(true)
                        {
                        }
                     }
                  }
                  addr97:
               }
               while(true)
               {
                  this.§%!,§ = §7!E§.§2=§.§<!C§(this.§8!R§,{"y":-300},{"y":this.§8!R§.y},1.5,§7!E§.§5!+§);
                  addr76:
                  while(_loc2_ || _loc1_)
                  {
                     §§push(this.§%!,§);
                     if(!(_loc1_ && this))
                     {
                        continue loop0;
                     }
                     §§goto(addr99);
                  }
               }
               addr56:
               return;
            }
         }
         §§goto(addr100);
      }
      
      private function setText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (this.§4!$§.getChildByName("text") as TextField).text = param1;
         }
      }
      
      override protected function onResize(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.center();
         }
      }
   }
}
