package §7g§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §+!J§.§>n§;
   import §1"b§.§7",§;
   import §>"%§.§"!5§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §,!B§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var _rect:Rectangle;
      
      private var §9L§:Vector.<String>;
      
      private var §-!z§:§"!5§;
      
      private var §]#a§:§>n§;
      
      private var §=w§:Number = 0;
      
      private var §%§:Number = 0;
      
      private var § ",§:Boolean = false;
      
      private var §5"K§:Array;
      
      private var §#L§:§!!%§;
      
      public function §,!B§(param1:§!!%§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this._rect = new Rectangle();
            while(true)
            {
               this.§9L§ = new Vector.<String>();
               while(!(_loc3_ && _loc2_))
               {
                  this.§]#a§ = new §>n§();
                  while(true)
                  {
                     super();
                     addr165:
                     while(true)
                     {
                        this.§#L§ = param1;
                        while(true)
                        {
                           §§push(this.§#L§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().§]"z§);
                              addr151:
                              while(true)
                              {
                                 §§pop().addCallback(§""A§.§4#I§,this.§-!B§);
                                 addr156:
                                 while(true)
                                 {
                                    §§push(this.§#L§);
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                     while(!(_loc3_ && _loc3_))
                     {
                        addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr165);
                           }
                           §§goto(addr41);
                        }
                        §§goto(addr82);
                     }
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§["a§)
            {
               loop0:
               while(true)
               {
                  stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
                  loop1:
                  do
                  {
                     if(_loc2_)
                     {
                        stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
                        while(_loc2_)
                        {
                           this.§%§ = mouseX;
                           if(_loc2_ || this)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  while(_loc3_);
                  
                  §§goto(addr46);
               }
            }
            return;
         }
         addr46:
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(mouseX - this.§%§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(Math.sqrt(_loc2_ * _loc2_) > 5)
            {
               if(_loc4_ || _loc3_)
               {
                  this.§ ",§ = true;
                  if(!(_loc5_ && _loc2_))
                  {
                     this.§]#a§.mouseEnabled = this.§]#a§.mouseChildren = false;
                     if(_loc4_)
                     {
                        addr83:
                        if(this.§ ",§)
                        {
                           if(_loc4_)
                           {
                              this.§>"Y§();
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr83);
      }
      
      private function §>"Y§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(mouseX - this.§%§);
         if(!_loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || this)
         {
            this.§%§ = mouseX;
            while(true)
            {
               this.§]#a§.x += _loc1_;
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            this.§+b§();
            if(_loc3_)
            {
               if(_loc3_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function get §["a§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Rectangle = this.§]#a§.transform.pixelBounds;
         §§push(_loc1_.width - scrollRect.width);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         return _loc2_ > 0;
      }
      
      private function §+b§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Rectangle = this.§]#a§.transform.pixelBounds;
         §§push(_loc1_.width - scrollRect.width);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§]#a§.x = Math.max(-_loc2_,Math.min(this.§]#a§.x,0));
         }
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
            if(!_loc4_)
            {
               addr41:
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
               if(_loc3_)
               {
                  this.§]#a§.mouseEnabled = this.§]#a§.mouseChildren = true;
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      private function §2#§(param1:§7",§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§0"a§ = null;
         if(_loc6_)
         {
            this.§-!z§ = param1.§@Z§ as §"!5§;
         }
         var _loc2_:Array = this.§]#a§.§[`§();
         for each(_loc3_ in _loc2_)
         {
            if(_loc6_ || this)
            {
               _loc3_.active = _loc3_.§[!_§.toLowerCase() == this.§-!z§.§^"%§.name.toLowerCase();
            }
         }
      }
      
      private function §#!<§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-!z§ = param1.§@Z§ as §"!5§;
            do
            {
               this.§`"x§();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private function §`"x§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§0"a§ = null;
         if(!_loc4_)
         {
            this.§]#a§.§7!Y§();
         }
         var _loc1_:Vector.<String> = this.§-!z§.§;#R§();
         if(!_loc4_)
         {
            this.§5"K§ = [];
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = new §0"a§(this.§#L§,_loc1_[_loc2_]);
            if(_loc5_)
            {
               if(_loc3_.§[!_§.toLowerCase() == this.§-!z§.§^"%§.name.toLowerCase())
               {
                  if(_loc5_)
                  {
                     addr91:
                     _loc3_.active = true;
                  }
                  while(true)
                  {
                  }
                  addr94:
               }
               loop2:
               while(true)
               {
                  this.§5"K§.push(_loc3_);
                  while(!_loc4_)
                  {
                     _loc2_++;
                     if(!(_loc4_ && this))
                     {
                        if(true)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  §§goto(addr94);
               }
               continue;
            }
            §§goto(addr91);
         }
         if(!_loc4_)
         {
            this.§]#a§.§9V§(this.§5"K§,0);
         }
      }
      
      private function §5!5§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§-!z§ = param1.§@Z§ as §"!5§;
         }
         do
         {
            this.§`"x§();
         }
         while(!_loc2_);
         
      }
      
      public function §5p§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§0"a§ = null;
         if(_loc5_ || _loc3_)
         {
            graphics.clear();
            loop0:
            while(true)
            {
               graphics.beginFill(§?#O§.§`!1§);
               loop1:
               while(true)
               {
                  addr58:
                  while(true)
                  {
                     graphics.drawRect(0,0,param1,§>"!§.§6R§);
                     while(!_loc6_)
                     {
                        scrollRect = new Rectangle(0,0,param1,§>"!§.§6R§);
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr58);
         }
         for each(_loc2_ in this.§5"K§)
         {
            if(_loc5_ || param1)
            {
               _loc2_.§5p§();
            }
         }
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this._rect = param1;
            while(true)
            {
               y = this._rect.y;
               while(true)
               {
                  x = this._rect.x;
                  §§goto(addr62);
               }
            }
         }
         addr62:
         while(true)
         {
            this.§5p§(this._rect.width);
            if(_loc2_ || this)
            {
               if(_loc2_)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§5p§(this._rect.width);
         }
      }
      
      public function get rect() : Rectangle
      {
         return getRect(parent);
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
   }
}
