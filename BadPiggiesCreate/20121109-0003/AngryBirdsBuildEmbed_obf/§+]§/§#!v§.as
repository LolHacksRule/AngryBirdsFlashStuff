package §+]§
{
   import §!y§.§2U§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §#!4§.§<f§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §#!v§
   {
       
      
      private const TOP:int = 133;
      
      private const BOTTOM:int = 66;
      
      private var §+!$§:§2U§;
      
      private var §;<§:Vector.<§%O§>;
      
      private var §-]§:§#!'§;
      
      private var §"R§:§#!'§;
      
      private var mDragging:§#!'§;
      
      private var §7f§:§%O§;
      
      private var §<!;§:int;
      
      private var § !]§:int = 0;
      
      private var §4H§:int = 0;
      
      private var §%!3§:§"U§;
      
      public function §#!v§(param1:§2U§, param2:§"U§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§;<§ = new Vector.<§%O§>(3);
         if(_loc4_ || this)
         {
            super();
            this.§%!3§ = param2;
            if(_loc4_ || _loc3_)
            {
               this.§+!$§ = param1;
               if(_loc4_ || param2)
               {
                  addr63:
                  this.§7f§ = param1.getItemByName("Background_Stars") as §%O§;
                  if(!_loc3_)
                  {
                     addr72:
                     this.§-]§ = param1.getItemByName("StarSlider_Upper") as §#!'§;
                     this.§"R§ = param1.getItemByName("StarSlider_Lower") as §#!'§;
                     if(_loc4_)
                     {
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr118);
               }
               addr98:
               this.§;<§[0] = param1.getItemByName("OneStar") as §%O§;
               this.§;<§[1] = param1.getItemByName("TwoStars") as §%O§;
               if(!_loc3_)
               {
                  addr118:
                  this.§;<§[2] = param1.getItemByName("ThreeStars") as §%O§;
               }
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr63);
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§-]§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         if(_loc1_ || _loc1_)
         {
            this.§"R§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         }
         §§push(this.§+!$§);
         if(!(_loc2_ && _loc1_))
         {
            §§pop().addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
            if(_loc1_)
            {
               §§push(this.§+!$§);
               if(!(_loc2_ && _loc2_))
               {
                  addr84:
                  §§pop().addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                  §§push(this.§+!$§);
               }
               §§pop().addEventListener(MouseEvent.ROLL_OUT,this.§^!H§);
            }
            this.§<!1§();
            return;
         }
         §§goto(addr84);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-]§.mClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            if(!_loc2_)
            {
               this.§"R§.mClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
               if(!_loc2_)
               {
                  addr48:
                  §§push(this.§+!$§);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop().removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this.§+!$§);
                        if(_loc1_ || _loc2_)
                        {
                           addr88:
                           §§pop().removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                           §§goto(addr102);
                        }
                        §§pop().removeEventListener(MouseEvent.ROLL_OUT,this.§^!H§);
                        addr102:
                        if(!_loc2_)
                        {
                           addr95:
                           §§push(this.§+!$§);
                        }
                        return;
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr48);
         }
         §§goto(addr95);
      }
      
      protected function §^!H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.onMouseUp(param1);
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mDragging);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.mDragging);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§pop().mClip.stopDrag();
                        if(_loc2_ || param1)
                        {
                           addr65:
                           this.mDragging.setComponentVisualState(§<f§.§1-§);
                           if(!(_loc3_ && _loc2_))
                           {
                              this.mDragging = null;
                              if(!_loc3_)
                              {
                                 addr80:
                                 this.§%!3§.mEditorUI.§[!t§(false);
                              }
                           }
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr65);
                  }
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr80);
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = param1.target as MovieClip;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ == this.§-]§.mClip)
            {
               if(!_loc4_)
               {
                  this.mDragging = this.§-]§;
                  if(!_loc4_)
                  {
                     §§push(this.mDragging);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§pop().mClip.startDrag(false,new Rectangle(this.mDragging.x,this.TOP,0,this.§"R§.y - this.§-]§.height + 7 - this.TOP));
                        addr143:
                        this.§<!;§ = param1.localY;
                        return;
                        addr84:
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr84);
               }
               else
               {
                  addr97:
                  this.mDragging = this.§"R§;
                  §§push(this.mDragging);
               }
               §§pop().mClip.startDrag(false,new Rectangle(this.mDragging.x,this.§-]§.y + this.§-]§.height - 7,0,this.§?I§() - (this.§-]§.y + this.§-]§.height - 7)));
            }
            else if(_loc2_ == this.§"R§.mClip)
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr97);
               }
            }
         }
         §§goto(addr143);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.mDragging)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this);
                  §§push(this.§ !]§);
                  §§push(this.§"R§.y - this.§?I§());
                  if(!(_loc3_ && this))
                  {
                     §§push(this.TOP);
                     if(_loc2_)
                     {
                        §§push(this.§?I§());
                        if(!_loc3_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc3_)
                           {
                              §§push(§§pop() / §§pop());
                              if(!_loc3_)
                              {
                                 addr73:
                                 §§push(§§pop() * (this.§4H§ - this.§ !]§));
                              }
                              §§pop().§1!N§ = §§pop() + §§pop();
                              if(_loc2_ || param1)
                              {
                                 §§push(this);
                                 §§push(this.§ !]§);
                                 §§push(this.§-]§.y - this.§?I§());
                                 if(!_loc3_)
                                 {
                                    §§push(this.TOP);
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(this.§?I§());
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§goto(addr134);
                                          }
                                          addr134:
                                          §§push(§§pop() / §§pop());
                                          if(_loc2_)
                                          {
                                             addr132:
                                             §§push(this.§4H§ - this.§ !]§);
                                          }
                                          §§pop().§0!+§ = §§pop() + §§pop();
                                          if(!(_loc3_ && param1))
                                          {
                                             addr143:
                                             this.§<!1§();
                                             §§goto(addr145);
                                          }
                                          addr145:
                                          return;
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr145);
                           }
                        }
                     }
                  }
                  §§goto(addr73);
               }
            }
         }
         §§goto(addr143);
      }
      
      public function §<!1§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!this.§7f§.visible)
         {
            return;
         }
         §§push(this.§"R§);
         §§push(this.§?I§());
         §§push(this.§1!N§ - this.§ !]§);
         if(_loc4_)
         {
            §§push(this.§4H§);
            if(_loc4_ || this)
            {
               §§push(this.§ !]§);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc4_)
                  {
                     addr70:
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                        addr68:
                        §§push(this.§?I§() - this.TOP);
                     }
                     §§pop().y = §§pop() - §§pop();
                     if(_loc4_)
                     {
                        §§push(this.§-]§);
                        §§push(this.§?I§());
                        §§push(this.§0!+§ - this.§ !]§);
                        if(!_loc3_)
                        {
                           §§push(this.§4H§);
                           if(!_loc3_)
                           {
                              §§push(this.§ !]§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr110:
                                    §§push(§§pop() / §§pop());
                                    if(!_loc3_)
                                    {
                                       addr108:
                                       §§push(this.§?I§() - this.TOP);
                                    }
                                    §§pop().y = §§pop() - §§pop();
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr119:
                                       §§push(this.mDragging);
                                       if(_loc4_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                addr133:
                                                this.mDragging.setComponentVisualState(§<f§.§5!?§);
                                             }
                                          }
                                          §§push(this.§?I§() - this.§"R§.y);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§push(§§pop() - 20);
                                          }
                                          §§push(this.§"R§.y - this.§-]§.y);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - 40);
                                          }
                                          §§push(this.§-]§.y - this.TOP);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§push(§§pop() - 20);
                                          }
                                          var _loc1_:Array = null;
                                          var _loc2_:int = 0;
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(3);
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      this.§;<§[2].y = this.TOP + (this.§-]§.y - this.TOP) / 2 - this.§;<§[2].height / 2 + 5;
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         this.§;<§[1].y = this.§-]§.y + this.§-]§.height + (this.§"R§.y - (this.§-]§.y + this.§-]§.height)) / 2 - this.§;<§[1].height / 2;
                                                         if(_loc4_)
                                                         {
                                                            addr406:
                                                            this.§;<§[0].y = this.§"R§.y + this.§-]§.height + (this.§?I§() - (this.§"R§.y + this.§"R§.height)) / 2 - this.§;<§[0].height / 2 + 6;
                                                            break;
                                                         }
                                                      }
                                                      (this.§"R§.mClip.getChildByName("text") as TextField).text = int(this.§1!N§).toString();
                                                      addr495:
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         addr525:
                                                         (this.§-]§.mClip.getChildByName("text") as TextField).text = int(this.§0!+§).toString();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§1!N§);
                                                      if(!(_loc4_ || this))
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(this.§0!+§);
                                                      if(!_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(!_loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  addr212:
                                                                  §§pop();
                                                                  §§push(_loc1_[_loc2_] > 0);
                                                               }
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            this.§;<§[_loc2_].mClip.visible = true;
                                                            this.§;<§[_loc2_].mClip.scaleY = Math.sqrt(Math.min(1,_loc1_[_loc2_] / (this.§;<§[_loc2_].height / this.§;<§[_loc2_].mClip.scaleY)));
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               this.§;<§[_loc2_].mClip.scaleX = this.§;<§[_loc2_].mClip.scaleY;
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  this.§;<§[_loc2_].mClip.x = (this.§7f§.width - this.§;<§[_loc2_].mClip.width) / 2 + 2;
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr495);
                                                               }
                                                               §§goto(addr538);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.§;<§[_loc2_].mClip.visible = false;
                                                            if(!(_loc4_ || this))
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   addr538:
                                                   return;
                                                }
                                                §§push(this.§+!$§);
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   §§push("MinScore");
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop().getItemByName(§§pop()));
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         (§§pop() as §;!j§).setText(int(this.§ !]§).toString());
                                                         if(!(_loc3_ && this))
                                                         {
                                                            addr480:
                                                            (this.§+!$§.getItemByName("MaxScore") as §;!j§).setText(int(this.§4H§).toString());
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§goto(addr495);
                                                            }
                                                            §§goto(addr525);
                                                         }
                                                         §§goto(addr495);
                                                      }
                                                   }
                                                }
                                                §§goto(addr480);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr110);
                                 §§push(§§pop() * §§pop());
                              }
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr70);
                  §§push(§§pop() * §§pop());
               }
            }
            §§goto(addr68);
         }
         §§goto(addr70);
      }
      
      public function §6!+§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         §§push(param2);
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() == §§pop());
            §§push(§§pop() == §§pop());
            if(_loc6_)
            {
               if(!§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     if(_loc6_ || _loc3_)
                     {
                        §§push(param1);
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop() == 0);
                           if(_loc6_ || this)
                           {
                              addr62:
                              if(§§pop())
                              {
                                 if(_loc6_ || param1)
                                 {
                                    this.§1!N§ = param1;
                                    this.§0!+§ = param1;
                                    if(_loc6_ || param2)
                                    {
                                       §§push(this.§"R§);
                                       if(_loc6_ || this)
                                       {
                                          §§pop().y = this.§?I§();
                                          if(_loc6_)
                                          {
                                             §§push(this.§-]§);
                                             if(!_loc5_)
                                             {
                                                §§pop().y = this.§?I§();
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(this.§"R§);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      addr120:
                                                      §§push(false);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         §§push(this.§-]§);
                                                         if(_loc6_)
                                                         {
                                                            addr133:
                                                            §§push(false);
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§pop().setVisibility(§§pop());
                                                               if(_loc6_)
                                                               {
                                                                  this.§;<§[0].setVisibility(false);
                                                                  if(!_loc5_)
                                                                  {
                                                                     this.§;<§[1].setVisibility(false);
                                                                     addr158:
                                                                     this.§;<§[2].setVisibility(false);
                                                                     addr425:
                                                                     this.§ !]§ = param1;
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        addr435:
                                                                        this.§4H§ = param2;
                                                                     }
                                                                  }
                                                                  §§goto(addr438);
                                                               }
                                                               else
                                                               {
                                                                  addr200:
                                                                  if(this.§1!N§ == this.§0!+§)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(param1);
                                                                     §§push(param2 - param1);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§push(§§pop() / 4);
                                                                     }
                                                                     §§pop().§1!N§ = §§pop() + §§pop();
                                                                     §§push(this);
                                                                     §§push(param1);
                                                                     §§push(param2 - param1);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop() / 1.3);
                                                                     }
                                                                     §§pop().§0!+§ = §§pop() + §§pop();
                                                                     this.§1!N§ = Math.min(param2,Math.max(param1,this.§1!N§));
                                                                     §§goto(addr391);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§4H§);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr249:
                                                                        §§push(§§pop() != 0);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr253:
                                                                           if(§§pop())
                                                                           {
                                                                              addr254:
                                                                              §§pop();
                                                                              §§push(this.§ !]§);
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr269:
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(this.§1!N§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr276:
                                                                                             §§push(this.§ !]§);
                                                                                             if(_loc5_ && this)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr325);
                                                                                          }
                                                                                          addr323:
                                                                                          addr325:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr333:
                                                                                             §§push(§§pop() / (this.§4H§ - this.§ !]§));
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                addr341:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          _loc4_ = §§pop();
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(param1);
                                                                                             §§push(param2 - param1);
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() * _loc3_);
                                                                                             }
                                                                                             §§pop().§1!N§ = §§pop() + §§pop();
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(param1);
                                                                                                §§push(param2 - param1);
                                                                                                if(!(_loc5_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop() * _loc4_);
                                                                                                }
                                                                                                §§pop().§0!+§ = §§pop() + §§pop();
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   addr391:
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr438);
                                                                                                }
                                                                                                §§goto(addr413);
                                                                                             }
                                                                                             §§goto(addr435);
                                                                                          }
                                                                                          addr413:
                                                                                          this.§0!+§ = Math.min(param2,Math.max(param1,this.§0!+§));
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§goto(addr425);
                                                                                          }
                                                                                          addr438:
                                                                                          return;
                                                                                          §§push(this.§ !]§);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr391);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    §§push(this.§4H§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(this.§ !]§);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(§§pop() / §§pop());
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   addr320:
                                                                                                   _loc3_ = §§pop();
                                                                                                   §§goto(addr323);
                                                                                                   §§push(this.§0!+§);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr341);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr333);
                                                                                 }
                                                                                 §§goto(addr320);
                                                                              }
                                                                              §§goto(addr323);
                                                                           }
                                                                           §§goto(addr269);
                                                                        }
                                                                        §§goto(addr254);
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                               }
                                                               §§goto(addr435);
                                                            }
                                                            else
                                                            {
                                                               addr172:
                                                               §§pop().setVisibility(§§pop());
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  addr180:
                                                                  this.§;<§[0].setVisibility(true);
                                                               }
                                                               this.§;<§[1].setVisibility(true);
                                                               this.§;<§[2].setVisibility(true);
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr200);
                                                               }
                                                            }
                                                            §§goto(addr413);
                                                         }
                                                         else
                                                         {
                                                            addr171:
                                                            §§push(true);
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                      else
                                                      {
                                                         addr168:
                                                         §§pop().setVisibility(§§pop());
                                                         §§push(this.§-]§);
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   else
                                                   {
                                                      addr167:
                                                      §§push(true);
                                                   }
                                                   §§goto(addr168);
                                                }
                                                §§goto(addr435);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr391);
                                       }
                                       §§goto(addr120);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr180);
                              }
                              else
                              {
                                 §§push(this.§"R§);
                              }
                              §§goto(addr167);
                           }
                        }
                        §§goto(addr249);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr249);
               }
               §§goto(addr62);
            }
            §§goto(addr253);
         }
         §§goto(addr276);
      }
      
      private function §?I§() : int
      {
         return this.§7f§.height - this.BOTTOM;
      }
      
      public function get §0!+§() : int
      {
         return this.§%!3§.getLevelMain().§#u§();
      }
      
      public function get §1!N§() : int
      {
         return this.§%!3§.getLevelMain().§ h§();
      }
      
      public function set §0!+§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§%!3§.getLevelMain().§^!5§(param1);
         }
      }
      
      public function set §1!N§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%!3§.getLevelMain().§%J§(param1);
         }
      }
   }
}
