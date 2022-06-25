package §9Y§
{
   import §4>§.Texture;
   import §5!c§.§9'§;
   import §7!B§.§-§;
   import §7!B§.§;R§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §<x§.§-^§;
   import §^!Y§.§'R§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §9=§ extends §-^§
   {
      
      private static const §=D§:Number = 1.5;
      
      private static const §0k§:Number = 0.15;
      
      private static const §`!+§:Number = 0.25;
      
      private static const §@>§:Number = 3.0;
      
      private static const §!?§:Number = 20.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §=D§ = 1.5;
            while(true)
            {
               §0k§ = 0.15;
               loop1:
               while(true)
               {
                  §`!+§ = 0.25;
                  while(true)
                  {
                     §@>§ = 3;
                     continue loop1;
                     addr50:
                     if(!(_loc1_ && _loc1_))
                     {
                        return;
                        addr67:
                     }
                  }
               }
            }
         }
         while(true)
         {
            §!?§ = 20;
            if(_loc2_ || _loc1_)
            {
               §§goto(addr50);
            }
            §§goto(addr72);
         }
         §§goto(addr67);
      }
      
      private var § case§:Number;
      
      private var §0!?§:Number;
      
      private var §'!m§:§;R§;
      
      private var §%_§:Boolean;
      
      private var §'!H§:Number;
      
      private var §&E§:BitmapData;
      
      private var §@!N§:Texture;
      
      private var §2§:int = 0;
      
      public function §9=§(param1:String, param2:Number, param3:§'R§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §§push(this);
            §§push(3 + Math.random() * 3);
            if(!(_loc6_ && param1))
            {
               §§push(-§§pop());
            }
            §§pop().§ case§ = §§pop();
         }
         while(_loc6_);
         
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§@!N§)
            {
               loop0:
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§@!N§);
                  while(true)
                  {
                     this.§@!N§ = null;
                     while(_loc2_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        while(_loc2_ || _loc2_)
                        {
                           this.§&E§ = null;
                           while(_loc2_ || _loc2_)
                           {
                              while(true)
                              {
                                 §§goto(addr29);
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(this.§&E§)
               {
                  §§goto(addr68);
               }
               addr29:
               while(true)
               {
                  super.dispose();
                  if(!_loc2_)
                  {
                     continue loop6;
                  }
                  addr34:
                  if(!(_loc1_ && this))
                  {
                     break;
                  }
                  addr68:
                  while(true)
                  {
                     this.§&E§.dispose();
                     break loop6;
                     §§goto(addr34);
                  }
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      override protected function createGroundQuad(param1:uint) : §;R§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§@!N§)
            {
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§@!N§);
                  addr118:
                  while(true)
                  {
                     this.§@!N§ = null;
                     addr100:
                     while(true)
                     {
                     }
                  }
               }
               addr104:
            }
            loop1:
            while(true)
            {
               if(this.§&E§)
               {
                  loop2:
                  while(_loc4_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        this.§&E§.dispose();
                        while(true)
                        {
                           this.§&E§ = null;
                           addr78:
                           while(true)
                           {
                           }
                           addr49:
                           if(_loc3_ && param1)
                           {
                              continue;
                           }
                           if(_loc3_ && param1)
                           {
                              continue loop1;
                           }
                           this.§@!N§ = textureManager.getTextureFromBitmapData(this.§&E§);
                           if(!(_loc3_ && this))
                           {
                              if(!_loc3_)
                              {
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       this.§&E§ = new BitmapData(2,2,false,param1);
                                       addr47:
                                       while(_loc4_)
                                       {
                                          §§goto(addr49);
                                       }
                                       §§goto(addr78);
                                    }
                                    addr38:
                                 }
                                 var _loc2_:§;R§ = new §-§(this.§@!N§,true,false);
                                 if(!_loc3_)
                                 {
                                    _loc2_.width = 4096;
                                    _loc2_.height = 4096;
                                    addr145:
                                    if(_loc3_)
                                    {
                                       §§goto(addr145);
                                    }
                                 }
                                 return _loc2_;
                              }
                              continue loop2;
                           }
                           §§goto(addr47);
                        }
                     }
                     else
                     {
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr118);
               }
               §§goto(addr38);
            }
         }
         §§goto(addr118);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§'!m§);
            loop0:
            while(§§pop() != null)
            {
               §§push(this.§'!m§);
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        this.§1N§();
                        loop2:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              addr44:
                              loop4:
                              while(true)
                              {
                                 this.§,d§();
                                 continue loop2;
                                 addr79:
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              addr44:
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§,!L§();
                              }
                              addr122:
                           }
                           §§goto(addr44);
                        }
                     }
                     addr124:
                     while(true)
                     {
                        §§goto(addr79);
                     }
                     if(!(_loc3_ && this))
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this);
                           §§push(this.§ case§);
                           if(!_loc3_)
                           {
                              §§push(param1);
                              if(!(_loc3_ && param1))
                              {
                                 §§push(§§pop() / 1000);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().§ case§ = §§pop();
                           if(_loc3_)
                           {
                              §§goto(addr47);
                           }
                           return;
                        }
                        break loop0;
                     }
                  }
               }
               §§goto(addr44);
            }
            while(true)
            {
               if(this.§ case§ > 0)
               {
                  §§goto(addr122);
               }
               §§goto(addr79);
            }
         }
         §§goto(addr124);
      }
      
      private function §,!L§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!(_loc3_ && _loc2_))
         {
            if(§'<§.numChildren > 0)
            {
               addr34:
               _loc1_ = §'<§.getChildAt(0) as Sprite;
               if(_loc4_ || _loc3_)
               {
                  if(_loc1_)
                  {
                     if(!_loc3_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc2_.top -= 2048;
                           loop0:
                           while(true)
                           {
                              this.§'!m§ = new §;R§(_loc2_.width,_loc2_.height,16777215);
                              loop1:
                              while(true)
                              {
                                 §§push(this.§'!m§);
                                 loop2:
                                 while(true)
                                 {
                                    §§pop().x = _loc2_.left;
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§'!m§);
                                       while(true)
                                       {
                                          §§pop().y = _loc2_.top;
                                          addr90:
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.§'!m§);
                                             if(!(_loc4_ || this))
                                             {
                                                break;
                                             }
                                             if(_loc4_)
                                             {
                                                §§pop().alpha = 0;
                                                while(_loc4_)
                                                {
                                                   _loc1_.addChild(this.§'!m§);
                                                   if(!_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc4_ || this)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr113:
                                                   while(true)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr149);
               }
               §§goto(addr159);
            }
            §§goto(addr260);
         }
         §§goto(addr34);
      }
      
      private function §1N§() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc7_:* = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(!(_loc12_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc12_)
         {
            §§push(this.§ case§);
            loop0:
            while(true)
            {
               §§push(§0k§);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§ case§);
                        loop3:
                        while(true)
                        {
                           §§push(§0k§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              loop5:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr359:
                                    loop32:
                                    while(true)
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          this.§'!m§.alpha = _loc2_;
                                          if(!(_loc12_ && this))
                                          {
                                             break;
                                          }
                                          loop24:
                                          while(true)
                                          {
                                             if(_loc11_ || _loc1_)
                                             {
                                                continue loop18;
                                             }
                                             loop25:
                                             while(true)
                                             {
                                                if(!(_loc11_ || _loc2_))
                                                {
                                                   continue loop32;
                                                }
                                                §§push(this.§2§);
                                                loop26:
                                                while(true)
                                                {
                                                   if(§§pop() == 1)
                                                   {
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§push(§=D§);
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(this.§0!?§);
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(§=D§);
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * 3);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop15:
                                                                           while(!_loc12_)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              loop16:
                                                                              while(_loc11_ || _loc1_)
                                                                              {
                                                                                 §§push(1);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc12_ && this)
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                    §§push(_loc7_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc11_ || _loc1_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr235:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          if(!(_loc11_ || _loc2_))
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc11_ || this))
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             _loc2_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   addr360:
                                                                                                   var _loc3_:uint = Math.round((1 - _loc2_) * 255);
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      §§push(this.§ case§);
                                                                                                      if(!(_loc12_ && _loc3_))
                                                                                                      {
                                                                                                         if(§§pop() > §=D§)
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               addr384:
                                                                                                               if(§'<§.numChildren > 0)
                                                                                                               {
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     if(_loc8_ = §'<§.getChildAt(0) as Sprite)
                                                                                                                     {
                                                                                                                        if(!(_loc12_ && _loc2_))
                                                                                                                        {
                                                                                                                           _loc8_.removeChild(this.§'!m§,true);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr421:
                                                                                                                  §§push(255);
                                                                                                                  if(_loc11_ || _loc1_)
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     if(!(_loc12_ && this))
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(§@>§);
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(§!?§);
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §@>§);
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * Math.random());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc12_ && this))
                                                                                                                           {
                                                                                                                              addr460:
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§pop().§ case§ = §§pop();
                                                                                                                           addr462:
                                                                                                                           addr466:
                                                                                                                           addr465:
                                                                                                                           var _loc4_:*;
                                                                                                                           §§push(_loc4_ = int(§'<§.numChildren - 1));
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              §§push(int(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc5_:* = §§pop();
                                                                                                                           addr607:
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc11_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr615:
                                                                                                                              §§push(1);
                                                                                                                              if(_loc11_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                 {
                                                                                                                                    addr572:
                                                                                                                                    §§push(_loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2));
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       addr583:
                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                       addr539:
                                                                                                                                       addr584:
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          addr544:
                                                                                                                                          §§push(255);
                                                                                                                                          if(_loc11_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc12_)
                                                                                                                                                {
                                                                                                                                                   §§push(255);
                                                                                                                                                   if(!_loc12_)
                                                                                                                                                   {
                                                                                                                                                      addr558:
                                                                                                                                                      _loc9_ = §§pop();
                                                                                                                                                      if(!(_loc12_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr566:
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            addr473:
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            if(_loc11_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc11_ || _loc1_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc12_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(16);
                                                                                                                                                                     if(!_loc12_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() << §§pop());
                                                                                                                                                                        if(_loc11_ || _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc9_ << 8);
                                                                                                                                                                           if(!_loc12_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!_loc12_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc12_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + _loc9_);
                                                                                                                                                                                    if(!(_loc12_ && _loc1_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr526:
                                                                                                                                                                                       §§push(uint(§§pop()));
                                                                                                                                                                                       if(_loc11_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                                                                          if(_loc11_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr539);
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc1_ = §'<§.getChildAt(_loc5_);
                                                                                                                                                                                             if(_loc11_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc1_.color = _loc10_;
                                                                                                                                                                                                if(!_loc12_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   if(!(_loc12_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr607);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr627:
                                                                                                                                                                                          addr624:
                                                                                                                                                                                          §§push(int(§%o§.numChildren - 1));
                                                                                                                                                                                          if(!_loc12_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr631:
                                                                                                                                                                                             addr630:
                                                                                                                                                                                             §§push(_loc4_ = §§pop());
                                                                                                                                                                                             if(_loc12_)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr635);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr635:
                                                                                                                                                                                          var _loc6_:* = §§pop();
                                                                                                                                                                                          if(_loc11_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr687:
                                                                                                                                                                                             if(_loc6_ >= 0)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc1_ = §%o§.getChildAt(_loc6_);
                                                                                                                                                                                                if(_loc11_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                                                                   §§push((_loc9_ << 16) + (_loc9_ << 8));
                                                                                                                                                                                                   if(!(_loc12_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + _loc9_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().color = §§pop();
                                                                                                                                                                                                   if(!_loc12_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      if(_loc11_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc6_ = §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr687);
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc12_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §5!0§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          return;
                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr572);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr627);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr572);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr526);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr631);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr615);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr544);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr539);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr558);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr526);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr584);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr624);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr630);
                                                                                                                                                }
                                                                                                                                                §§goto(addr566);
                                                                                                                                             }
                                                                                                                                             §§goto(addr473);
                                                                                                                                          }
                                                                                                                                          §§goto(addr572);
                                                                                                                                       }
                                                                                                                                       §§goto(addr583);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr627);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr631);
                                                                                                                        }
                                                                                                                        §§goto(addr460);
                                                                                                                     }
                                                                                                                     §§goto(addr462);
                                                                                                                  }
                                                                                                                  §§goto(addr466);
                                                                                                               }
                                                                                                               this.§'!m§ = null;
                                                                                                               if(_loc11_ || _loc1_)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr462);
                                                                                                            }
                                                                                                            §§goto(addr421);
                                                                                                         }
                                                                                                         §§goto(addr462);
                                                                                                      }
                                                                                                      §§goto(addr465);
                                                                                                   }
                                                                                                   §§goto(addr384);
                                                                                                   addr57:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§2§ + 1);
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(§§pop() % 2);
                                                                                                         }
                                                                                                         §§pop().§2§ = §§pop();
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   addr319:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr300:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc11_ || _loc1_))
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              §§push(§0k§);
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§0!?§);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc11_ || _loc2_))
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          §§push(this.§ case§);
                                                                                          if(!(_loc12_ && _loc3_))
                                                                                          {
                                                                                             if(!(_loc11_ || _loc2_))
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             §§push(§0k§);
                                                                                             if(!(_loc12_ && this))
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                if(_loc12_ && this)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                §§push(this.§0!?§);
                                                                                                if(_loc11_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc12_ && _loc1_))
                                                                                                   {
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§`!+§);
                                                                                                   }
                                                                                                   addr118:
                                                                                                   if(_loc11_ || this)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      if(_loc11_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(!(_loc12_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(this.§ case§);
                                                                                                            if(!(_loc12_ && this))
                                                                                                            {
                                                                                                               §§push(§0k§);
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.§0!?§);
                                                                                                                  if(!(_loc12_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        addr171:
                                                                                                                        §§push(§§pop() / §`!+§);
                                                                                                                     }
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           addr177:
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              if(_loc12_ && _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr245);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     §§goto(addr206);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr171);
                                                                                                         }
                                                                                                         §§goto(addr198);
                                                                                                      }
                                                                                                      §§goto(addr255);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc11_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            §§goto(addr235);
                                                                                                         }
                                                                                                      }
                                                                                                      addr225:
                                                                                                   }
                                                                                                   §§goto(addr245);
                                                                                                }
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr118);
                                                                                          }
                                                                                          §§goto(addr177);
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                             continue loop32;
                                          }
                                       }
                                       if(false)
                                       {
                                          §§goto(addr57);
                                       }
                                       §§goto(addr360);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(this.§ case§);
                  }
                  §§goto(addr300);
               }
            }
         }
         §§goto(addr359);
      }
      
      private function §,d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§ case§ > this.§'!H§)
            {
               while(!this.§%_§)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §9'§.§!!`§("Lightning04","ChannelExplosions");
                  }
                  do
                  {
                     this.§%_§ = true;
                  }
                  while(_loc2_ && _loc2_);
                  
                  if(_loc1_ || _loc1_)
                  {
                     addr61:
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr61);
      }
   }
}
