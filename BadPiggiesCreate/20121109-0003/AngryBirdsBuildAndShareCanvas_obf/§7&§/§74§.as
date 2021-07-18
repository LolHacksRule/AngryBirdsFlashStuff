package §7&§
{
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import com.rovio.assets.§69§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §74§ extends §9!R§
   {
      
      private static const §31§:Number = 0.001;
      
      private static const §9[§:uint = 9292;
      
      private static const §;!]§:Number = 0.6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §31§ = 0.001;
         }
         while(true)
         {
            §9[§ = 9292;
            while(_loc1_)
            {
               §;!]§ = 0.6;
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      private var §7!y§:Sprite;
      
      private var §0!S§:DisplayObject;
      
      private var §4=§:MovieClip;
      
      private var §8m§:DisplayObject;
      
      private var §<"'§:Vector.<DisplayObject>;
      
      private var §7"7§:Boolean = false;
      
      private var §!;§:§=!r§;
      
      public function §74§()
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§7!y§ = new Sprite();
               addr63:
               if(_loc3_ && this)
               {
                  continue;
               }
               while(true)
               {
                  this.§8m§.x = this.§8m§.width;
                  do
                  {
                     this.§<"'§ = new Vector.<DisplayObject>();
                  }
                  while(_loc3_ && this);
                  
                  if(!(_loc3_ && this))
                  {
                     if(true)
                     {
                        var _loc1_:int = 0;
                        addr138:
                        if(_loc1_ < 10)
                        {
                           _loc1_++;
                           if(_loc4_)
                           {
                              §§goto(addr138);
                           }
                        }
                        var _loc2_:Class = §69§.§ 0§("TextField_StabilityTimer");
                        if(_loc4_ || _loc2_)
                        {
                           this.§4=§ = new _loc2_();
                        }
                     }
                     continue;
                     addChild(this.§4=§);
                     addr185:
                     if(!(_loc4_ || this))
                     {
                        §§goto(addr185);
                     }
                     return;
                  }
                  break;
               }
               while(!(_loc3_ && _loc1_))
               {
                  §§goto(addr63);
                  §§goto(addr43);
               }
               addr43:
               while(_loc4_)
               {
                  addChild(this.§8m§);
                  §§goto(addr56);
               }
               addr56:
               loop4:
               while(true)
               {
                  if(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        addr100:
                        if(_loc3_ && _loc3_)
                        {
                           break;
                        }
                        this.§8m§ = new §69§.§ 0§("moon")();
                        §§goto(addr78);
                     }
                     while(true)
                     {
                        this.§0!S§ = new §69§.§ 0§("night_gradient")();
                     }
                     addr121:
                  }
                  while(true)
                  {
                     this.§0!S§.alpha = 1;
                     continue loop4;
                  }
               }
               addr78:
               while(true)
               {
                  addChild(this.§7!y§);
                  §§goto(addr121);
                  §§goto(addr100);
               }
               addr127:
            }
         }
         §§goto(addr127);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.onAddedToStage(param1);
         }
         loop0:
         while(true)
         {
            this.center();
            loop1:
            while(true)
            {
               this.setText("");
               loop2:
               while(true)
               {
                  this.§7!y§.alpha = 0;
                  loop3:
                  while(true)
                  {
                     this.§0!S§.y = -this.§0!S§.height;
                     while(_loc3_)
                     {
                        this.§7"7§ = false;
                        loop5:
                        while(true)
                        {
                           this.§8m§.y = -100;
                           loop6:
                           while(!_loc2_)
                           {
                              this.§!;§ = §7I§.§[E§.§ ";§(this.§8m§,{"y":80},{"y":-300},1.5,§7I§.§;!C§);
                              while(true)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        if(!(_loc2_ && this))
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function center() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = §'_§.§implements§();
         var _loc2_:int = §'_§.§6l§();
         if(!(_loc3_ && _loc1_))
         {
            this.§7!y§.graphics.clear();
            loop0:
            while(true)
            {
               this.§7!y§.graphics.beginFill(§9[§,1);
               while(true)
               {
                  this.§7!y§.graphics.drawRect(0,0,_loc1_,_loc2_);
                  loop2:
                  while(true)
                  {
                     this.§7!y§.graphics.endFill();
                     loop3:
                     while(true)
                     {
                        this.§0!S§.width = this.§7!y§.width;
                        loop4:
                        while(true)
                        {
                           this.§4=§.x = _loc1_ / 2 - this.§4=§.width / 2;
                           loop5:
                           while(_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 continue loop2;
                                 while(true)
                                 {
                                    this.§4=§.y = _loc2_ / 3;
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop0;
                              return;
                           }
                           continue loop3;
                        }
                     }
                  }
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr60);
               }
            }
         }
         §§goto(addr95);
      }
      
      override public function update(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.§7"7§)
            {
               addr27:
               §§push(-1);
               if(_loc4_ || param1)
               {
               }
               addr44:
               §§push(int(§§pop()));
            }
            else
            {
               §§push(1);
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr44);
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               this.§7!y§.alpha = Math.max(0,Math.min(§;!]§,this.§7!y§.alpha + _loc2_ * param1 * §31§));
            }
            do
            {
               this.§0!S§.y = -this.§0!S§.height + this.§7!y§.alpha / §;!]§ * this.§0!S§.height;
            }
            while(!(_loc4_ || param1));
            
            return;
         }
         §§goto(addr27);
      }
      
      public function §%!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7"7§ = true;
            while(true)
            {
               this.§>!c§();
               while(_loc1_)
               {
                  this.setText("Fail!");
                  if(_loc1_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §]!y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§7"7§ = true;
            do
            {
               this.§>!c§();
               do
               {
                  this.setText("Done!");
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      private function §>!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§!;§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§!;§);
                     addr98:
                     while(true)
                     {
                        §§pop().stop();
                        addr99:
                        while(true)
                        {
                        }
                     }
                  }
                  addr96:
               }
               loop1:
               while(true)
               {
                  this.§!;§ = §7I§.§[E§.§ ";§(this.§8m§,{"y":-300},{"y":this.§8m§.y},1.5,§7I§.§7L§);
                  while(true)
                  {
                     if(_loc1_)
                     {
                        §§push(this.§!;§);
                        if(_loc2_)
                        {
                           break;
                        }
                        §§pop().play();
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc1_ || _loc1_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     §§goto(addr96);
                  }
               }
               return;
            }
            §§goto(addr98);
         }
         §§goto(addr99);
      }
      
      private function setText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            (this.§4=§.getChildByName("text") as TextField).text = param1;
         }
      }
      
      override protected function onResize(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.center();
         }
      }
   }
}
