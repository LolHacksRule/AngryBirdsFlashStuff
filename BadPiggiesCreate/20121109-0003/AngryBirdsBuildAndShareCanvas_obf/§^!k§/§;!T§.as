package §^!k§
{
   import §"_§.§!"8§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §=!7§.§6W§;
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §;!T§ extends Sprite
   {
      
      private static const §8!t§:int = 20;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8!t§ = 20;
         }
      }
      
      private var §,!o§:Sprite;
      
      private var §!T§:Sprite;
      
      private var §-!6§:Boolean = false;
      
      private var §`k§:§1",§;
      
      private var §<!!§:int;
      
      private var §`!V§:int;
      
      private var §4!g§:Number;
      
      private var §!!6§:Boolean = false;
      
      private var §-!z§:Boolean = false;
      
      private var §<c§:Number = 1;
      
      private var §,!c§:§=!r§;
      
      private var §@"<§:MovieClip;
      
      private var §='§:DisplayObject;
      
      private var §-!S§:TextField;
      
      private var §+!A§:String;
      
      private var §6">§:int;
      
      public function §;!T§(param1:String, param2:§6W§, param3:DisplayObject, param4:Boolean = false, param5:Number = 1, param6:int = 2147483647)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            this.§`k§ = new §1",§();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§4!g§ = param5;
                  loop2:
                  while(true)
                  {
                     this.§!T§ = new Sprite();
                     while(true)
                     {
                        this.§!T§.addChild(param3);
                        loop9:
                        while(!(_loc7_ && param2))
                        {
                           this.§@"<§.addChild(this.§!T§);
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 continue loop0;
                              }
                              this.§@"<§.addChild(this.§,!o§);
                              loop11:
                              while(true)
                              {
                                 this.§<!!§ = this.§!T§.width;
                                 loop12:
                                 while(_loc8_)
                                 {
                                    this.§`!V§ = this.§!T§.height;
                                    while(true)
                                    {
                                       visible = true;
                                       continue loop11;
                                    }
                                    addr89:
                                    if(_loc7_ && param2)
                                    {
                                       continue;
                                    }
                                    addr96:
                                    if(!(_loc7_ && this))
                                    {
                                       addChild(this.§@"<§);
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             addr58:
                                             if(_loc8_ || param3)
                                             {
                                                addr65:
                                                if(_loc8_ || param3)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§@"<§.useHandCursor = true;
                                                      while(true)
                                                      {
                                                         this.§@"<§.addEventListener(MouseEvent.ROLL_OVER,this.§@"8§);
                                                         addr147:
                                                         while(!(_loc7_ && param2))
                                                         {
                                                            this.§@"<§.addEventListener(MouseEvent.ROLL_OUT,this.§+!h§);
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr114:
                                                               if(_loc8_ || this)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr238:
                                                               while(true)
                                                               {
                                                                  this.§,!o§ = new Sprite();
                                                                  continue loop9;
                                                                  §§goto(addr114);
                                                               }
                                                               §§goto(addr58);
                                                            }
                                                            continue loop2;
                                                            §§goto(addr65);
                                                         }
                                                      }
                                                   }
                                                   addr166:
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr112);
                                          }
                                          else
                                          {
                                             addr247:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr89);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr194);
                                                   }
                                                }
                                                else
                                                {
                                                   while(_loc8_)
                                                   {
                                                      this.§@"<§.buttonMode = true;
                                                   }
                                                   while(true)
                                                   {
                                                      param3.x = -param3.width / 2;
                                                      break loop12;
                                                   }
                                                   addr261:
                                                   addr171:
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§@"<§ = new MovieClip();
                                                §§goto(addr238);
                                                §§goto(addr96);
                                             }
                                             addr247:
                                             addr85:
                                          }
                                          §§goto(addr166);
                                       }
                                       while(true)
                                       {
                                          this.§+!A§ = param1;
                                          §§goto(addr261);
                                       }
                                       addr267:
                                    }
                                    §§goto(addr247);
                                 }
                                 while(true)
                                 {
                                    param3.y = -param3.height / 2;
                                    §§goto(addr247);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr267);
      }
      
      private function §+!h§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§,!c§);
            if(!_loc3_)
            {
               if(§§pop() != null)
               {
                  addr35:
                  if(!(_loc3_ && this))
                  {
                     §§push(this.§,!c§);
                  }
                  §§push(this.§<c§);
                  if(_loc4_)
                  {
                     §§push(§§pop() * this.§4!g§);
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc3_)
                  {
                     this.§,!c§ = §7I§.§[E§.§ ";§(this.§!T§,{
                        "scaleX":_loc2_,
                        "scaleY":_loc2_
                     },null,0.05);
                  }
                  loop0:
                  while(true)
                  {
                     this.§,!c§.play();
                     while(!this.§-!6§)
                     {
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        if(_loc4_ || _loc3_)
                        {
                           break;
                        }
                     }
                     return;
                  }
               }
               §§goto(addr35);
            }
            §§pop().stop();
         }
         §§goto(addr35);
      }
      
      private function §@"8§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§,!c§);
            if(_loc4_)
            {
               if(§§pop() != null)
               {
                  addr35:
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§,!c§);
                  }
                  var _loc2_:* = Number(1);
                  if(!(_loc3_ && param1))
                  {
                     §§push(this.§<c§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§4!g§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              if(§§pop() == 1)
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_ || param1)
                                    {
                                       while(true)
                                       {
                                          §§push(0.05);
                                          addr165:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                addr168:
                                             }
                                          }
                                       }
                                       addr164:
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr170:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr94:
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       this.§[!$§();
                                       if(!(_loc3_ && param1))
                                       {
                                          addr60:
                                          if(!(_loc3_ && param1))
                                          {
                                             addr67:
                                             if(_loc4_ || _loc3_)
                                             {
                                                break;
                                             }
                                             addr122:
                                             while(true)
                                             {
                                                this.§,!c§.play();
                                                §§goto(addr67);
                                             }
                                          }
                                          while(true)
                                          {
                                             parent.setChildIndex(this,parent.numChildren - 1);
                                             §§goto(addr60);
                                          }
                                       }
                                       while(_loc4_)
                                       {
                                          §§goto(addr94);
                                          continue loop10;
                                       }
                                       §§goto(addr170);
                                    }
                                    return;
                                    addr101:
                                 }
                              }
                              while(true)
                              {
                                 this.§,!c§ = §7I§.§[E§.§ ";§(this.§!T§,{
                                    "scaleX":_loc2_,
                                    "scaleY":_loc2_
                                 },null,0.05);
                                 §§goto(addr122);
                                 §§goto(addr170);
                              }
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr101);
               }
               §§goto(addr35);
            }
            §§pop().stop();
         }
         §§goto(addr35);
      }
      
      public function §%q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-!6§ = true;
         }
         while(true)
         {
            this.§[!$§();
            while(_loc2_)
            {
               dispatchEvent(new §!"8§(§!"8§.§9!`§));
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private function §[!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§`k§.§#!>§(this.§!T§.parent);
         }
      }
      
      public function §%z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-!6§ = false;
            do
            {
               this.§`k§.§8"-§(this.§!T§.parent);
            }
            while(_loc1_);
            
         }
      }
      
      public function getItemName() : String
      {
         return this.§+!A§;
      }
      
      public function §4"7§() : Bitmap
      {
         return this.§!T§.getChildAt(0) as Bitmap;
      }
      
      public function §!"#§() : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Array = this.§!T§.filters;
         if(!_loc4_)
         {
            this.§!T§.filters = [];
         }
         var _loc2_:BitmapData = new BitmapData(this.§!T§.width / this.§!T§.scaleX,this.§!T§.height / this.§!T§.scaleY,true,0);
         if(!_loc4_)
         {
            _loc2_.draw(this.§!T§);
            do
            {
               this.§!T§.filters = _loc1_;
            }
            while(!(_loc3_ || _loc3_));
            
         }
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§,!o§.graphics.clear();
            while(true)
            {
               this.§,!o§.graphics.beginFill(16711680,0);
               addr47:
               if(!(_loc3_ && param1))
               {
                  return;
               }
            }
         }
         while(true)
         {
            this.§,!o§.graphics.drawRect(0,0,param1,param2);
            loop2:
            while(_loc4_ || _loc3_)
            {
               this.§,!o§.graphics.endFill();
               while(true)
               {
                  this.§!T§.x = this.§,!o§.width / 2;
                  while(!(_loc3_ && this))
                  {
                     this.§!T§.y = this.§,!o§.height / 2;
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        continue loop2;
                     }
                     §§goto(addr47);
                  }
               }
            }
         }
      }
      
      public function §@V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<c§ = param1;
            while(true)
            {
               this.§!T§.scaleX = this.§<c§ * this.§4!g§;
               §§goto(addr77);
            }
         }
         addr77:
         while(true)
         {
            this.§!T§.scaleY = this.§<c§ * this.§4!g§;
            if(!(_loc2_ && _loc3_))
            {
               if(_loc3_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §%Y§() : int
      {
         return this.§!T§.width;
      }
      
      public function §=W§() : int
      {
         return this.§!T§.height;
      }
      
      public function get §89§() : int
      {
         return this.§<!!§ * this.§4!g§;
      }
      
      public function get §7§() : int
      {
         return this.§`!V§ * this.§4!g§;
      }
      
      public function lock() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§`F§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr151:
                  return;
               }
               addr116:
               while(true)
               {
                  §§push(Boolean(this.§='§));
                  continue loop0;
               }
            }
         }
         §§goto(addr115);
      }
      
      public function unlock() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§`F§)
            {
               loop0:
               while(true)
               {
                  this.§@"<§.addEventListener(MouseEvent.ROLL_OVER,this.§@"8§);
                  loop1:
                  while(true)
                  {
                     this.§@"<§.addEventListener(MouseEvent.ROLL_OUT,this.§+!h§);
                     while(true)
                     {
                        this.§@"<§.addEventListener(Event.MOUSE_LEAVE,this.§+!h§);
                        loop3:
                        for(; !(_loc1_ && _loc2_); if(!(_loc2_ || this))
                        {
                           continue;
                        },if(_loc1_ && _loc2_)
                        {
                           continue loop0;
                        },mouseChildren = true,§§goto(addr54))
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr178);
                           }
                           this.§!T§.alpha = 1;
                           loop4:
                           while(true)
                           {
                              removeChild(this.§='§);
                              while(true)
                              {
                                 this.§!!6§ = false;
                                 continue loop1;
                                 addr61:
                                 if(_loc2_ || _loc1_)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       buttonMode = true;
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(_loc2_)
                                          {
                                             addr42:
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       else
                                       {
                                          addr54:
                                          while(_loc2_ || _loc1_)
                                          {
                                             §§goto(addr61);
                                             continue loop10;
                                          }
                                          while(true)
                                          {
                                             useHandCursor = true;
                                             §§goto(addr54);
                                          }
                                          addr54:
                                          addr104:
                                       }
                                       while(_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    return;
                                    addr68:
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr178:
            return;
         }
         §§goto(addr68);
      }
      
      public function get §`F§() : Boolean
      {
         return this.§!!6§;
      }
      
      public function §9B§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(this.§-!S§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr206:
                     while(true)
                     {
                        §§push(Boolean(this.§-!S§.parent));
                        if(!(_loc3_ || _loc2_))
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     while(_loc3_)
                     {
                        this.§-!S§.parent.removeChild(this.§-!S§);
                        while(true)
                        {
                        }
                     }
                     §§goto(addr206);
                     addr181:
                  }
                  loop6:
                  while(true)
                  {
                     this.§-!S§ = new TextField();
                     loop7:
                     while(true)
                     {
                        this.§-!S§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",14,16777215);
                        addr78:
                        if(_loc2_ && param1)
                        {
                           continue;
                        }
                        this.§!!6§ = param1 < 1;
                        loop15:
                        while(true)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              continue loop6;
                           }
                           addr69:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 addr71:
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr78);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§-!S§.text = param1.toString();
                                       }
                                       else
                                       {
                                          §§goto(addr181);
                                       }
                                       §§goto(addr71);
                                    }
                                    addr133:
                                 }
                              }
                              while(true)
                              {
                                 this.§-!S§.x = width / 3;
                                 break loop15;
                              }
                              continue loop15;
                           }
                           continue loop7;
                        }
                        while(!_loc2_)
                        {
                           this.§-!S§.y = height / 3;
                           §§goto(addr103);
                        }
                        §§goto(addr148);
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public function get §%!M§() : int
      {
         return this.§6">§;
      }
   }
}
