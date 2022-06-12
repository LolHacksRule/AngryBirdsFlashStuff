package §`!W§
{
   import §0!R§.Texture;
   import §1!$§.§!"?§;
   import §1!$§.§0!N§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §6!D§.§0Y§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §]!G§ extends §[!x§
   {
      
      private static const §?!A§:Number = 1.5;
      
      private static const §^n§:Number = 0.15;
      
      private static const §,"C§:Number = 0.25;
      
      private static const §"W§:Number = 3.0;
      
      private static const §-!_§:Number = 20.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §]!G§)
         {
            §?!A§ = 1.5;
         }
         while(true)
         {
            §^n§ = 0.15;
            while(!(_loc2_ && _loc1_))
            {
               §,"C§ = 0.25;
               while(!(_loc2_ && _loc2_))
               {
                  §"W§ = 3;
                  while(!(_loc2_ && _loc1_))
                  {
                     §-!_§ = 20;
                     if(!(_loc2_ && §]!G§))
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      private var §4!a§:Number;
      
      private var §2E§:Number;
      
      private var §2!1§:§!"?§;
      
      private var §^"=§:Boolean;
      
      private var §'"1§:Number;
      
      private var §;[§:BitmapData;
      
      private var §1X§:Texture;
      
      private var § $§:int = 0;
      
      public function §]!G§(param1:String, param2:Number, param3:§0Y§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super(param1,param2,param3,param4);
            do
            {
               §§push(this);
               §§push(3 + Math.random() * 3);
               if(_loc5_)
               {
                  §§push(-§§pop());
               }
               §§pop().§4!a§ = §§pop();
            }
            while(!(_loc5_ || param2));
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§1X§)
            {
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§1X§);
                  addr100:
                  while(true)
                  {
                     this.§1X§ = null;
                     addr92:
                     while(true)
                     {
                     }
                  }
               }
               addr96:
            }
            while(true)
            {
               if(!this.§;[§)
               {
                  addr29:
                  while(true)
                  {
                     super.dispose();
                     if(!(_loc1_ && _loc1_))
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        continue loop4;
                     }
                     continue loop5;
                  }
               }
               while(!(_loc1_ && _loc2_))
               {
                  this.§;[§.dispose();
                  while(_loc2_)
                  {
                     if(_loc2_)
                     {
                        this.§;[§ = null;
                        while(true)
                        {
                           §§goto(addr29);
                        }
                     }
                     else
                     {
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr100);
               }
               continue;
               return;
            }
         }
         §§goto(addr92);
      }
      
      override protected function createGroundQuad(param1:uint) : §!"?§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(this.§1X§)
            {
               loop0:
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§1X§);
                  loop1:
                  while(true)
                  {
                     this.§1X§ = null;
                     addr94:
                     while(true)
                     {
                        addr77:
                        loop4:
                        while(!(_loc4_ && this))
                        {
                           this.§;[§.dispose();
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 this.§;[§ = null;
                                 loop6:
                                 while(_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       this.§;[§ = new BitmapData(2,2,false,param1);
                                       loop8:
                                       while(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             this.§1X§ = textureManager.getTextureFromBitmapData(this.§;[§);
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             continue loop8;
                                          }
                                          var _loc2_:§!"?§ = new §0!N§(this.§1X§,true,false);
                                          if(!_loc4_)
                                          {
                                             _loc2_.width = 4096;
                                          }
                                          do
                                          {
                                             _loc2_.height = 4096;
                                          }
                                          while(_loc4_);
                                          
                                          return _loc2_;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(this.§;[§)
               {
                  §§goto(addr77);
               }
               §§goto(addr40);
               §§goto(addr94);
            }
         }
         §§goto(addr51);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§2!1§);
            loop0:
            while(§§pop() != null)
            {
               §§push(this.§2!1§);
               if(_loc3_)
               {
                  continue;
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           this.§;!x§();
                           loop9:
                           while(true)
                           {
                              if(!(_loc2_ || this))
                              {
                                 break loop0;
                              }
                              while(true)
                              {
                                 this.§'"§();
                                 while(true)
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       continue loop1;
                                    }
                                    §§push(this);
                                    addr78:
                                    §§push(this.§4!a§);
                                    continue loop9;
                                    if(_loc2_)
                                    {
                                       §§push(param1);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§§pop() / 1000);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§4!a§ = §§pop();
                                    if(_loc2_)
                                    {
                                       return;
                                    }
                                 }
                                 continue loop9;
                              }
                           }
                        }
                        addr99:
                     }
                     addr119:
                     while(true)
                     {
                        addr89:
                        while(true)
                        {
                        }
                     }
                  }
               }
               §§goto(addr44);
            }
            while(true)
            {
               if(this.§4!a§ > 0)
               {
                  §§goto(addr117);
               }
               §§goto(addr89);
            }
         }
         §§goto(addr99);
      }
      
      private function §5p§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!_loc4_)
         {
            if(backgroundLayersSprite.numChildren > 0)
            {
               addr28:
               _loc1_ = backgroundLayersSprite.getChildAt(0) as Sprite;
               if(_loc3_)
               {
                  if(_loc1_)
                  {
                     if(!_loc4_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc2_.top -= 2048;
                           while(true)
                           {
                              this.§2!1§ = new §!"?§(_loc2_.width,_loc2_.height,16777215);
                              loop1:
                              while(!_loc4_)
                              {
                                 §§push(this.§2!1§);
                                 while(true)
                                 {
                                    §§pop().x = _loc2_.left;
                                    addr105:
                                    while(!_loc4_)
                                    {
                                       §§push(this.§2!1§);
                                       loop4:
                                       while(true)
                                       {
                                          §§pop().y = _loc2_.top;
                                          addr98:
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    continue loop1;
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    §§pop().alpha = 0;
                                    loop7:
                                    for(; !(_loc4_ && _loc3_); while(true)
                                    {
                                       _loc1_.addChild(this.§2!1§);
                                       if(!_loc3_)
                                       {
                                          continue loop7;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr63);
                                    },this.§ $§ = 0,if(_loc3_ || _loc1_)
                                    {
                                       this.§4!a§ = 0;
                                    },while(true)
                                    {
                                       if(Math.random() >= 0.25)
                                       {
                                          §§push(this);
                                          §§push(0.3);
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             §§push(Math.random() * (§?!A§ - 0.3));
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() * 0.3);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§2E§ = §§pop();
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                while(true)
                                                {
                                                   addr162:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(0.2);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(§§pop() + Math.random() * 2);
                                                      }
                                                      §§pop().§'"1§ = §§pop();
                                                      addr178:
                                                      §§goto(addr189);
                                                   }
                                                }
                                                addr226:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(0.7);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() + Math.random() * (§?!A§ - 0.7));
                                                   }
                                                   §§pop().§2E§ = §§pop();
                                                }
                                                addr232:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr162);
                                             }
                                          }
                                       }
                                       §§goto(addr232);
                                    })
                                    {
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr98);
                                 }
                              }
                           }
                        }
                        §§goto(addr91);
                     }
                     addr189:
                     while(true)
                     {
                        if(!(_loc3_ || _loc2_))
                        {
                           continue loop13;
                        }
                        if(_loc3_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop12;
                        }
                     }
                     §§goto(addr249);
                  }
                  §§goto(addr138);
               }
               §§goto(addr226);
            }
            addr249:
            while(true)
            {
               this.§^"=§ = false;
               if(_loc3_ || _loc2_)
               {
                  if(true)
                  {
                     break;
                  }
                  continue loop10;
               }
               §§goto(addr178);
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function §;!x§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc11_)
         {
            §§push(this.§4!a§);
            loop0:
            while(true)
            {
               §§push(§^n§);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(this.§4!a§);
                     loop2:
                     while(true)
                     {
                        §§push(§^n§);
                        loop3:
                        while(true)
                        {
                           §§push(this.§2E§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(this.§4!a§);
                                    if(_loc12_ || _loc3_)
                                    {
                                       if(!_loc11_)
                                       {
                                          if(_loc12_ || this)
                                          {
                                             §§push(§^n§);
                                             if(_loc12_)
                                             {
                                                if(_loc12_)
                                                {
                                                   if(_loc11_ && _loc1_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(this.§2E§);
                                                   if(!_loc11_)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc11_)
                                                      {
                                                         addr101:
                                                         if(_loc12_)
                                                         {
                                                            addr105:
                                                            §§push(§§pop() + §,"C§);
                                                            if(!_loc11_)
                                                            {
                                                               if(!(_loc12_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        §§push(1);
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(this.§4!a§);
                                                                           if(_loc12_ || _loc2_)
                                                                           {
                                                                              §§push(§^n§);
                                                                              if(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() + this.§2E§);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    addr149:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       addr152:
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          addr156:
                                                                                          §§push(§§pop() - §§pop() / §,"C§);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                if(_loc12_ || _loc1_)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                addr192:
                                                                                                if(_loc12_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      addr206:
                                                                                                      §§push(Number(§§pop() + Math.random() * _loc7_));
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr209:
                                                                                                         _loc2_ = §§pop();
                                                                                                         addr210:
                                                                                                         if(_loc12_ || this)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr39:
                                                                                                                  addr289:
                                                                                                                  loop10:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§2!1§.alpha = _loc2_;
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(!(_loc12_ || _loc3_))
                                                                                                                           {
                                                                                                                              §§goto(addr257);
                                                                                                                           }
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              var _loc3_:uint = Math.round((1 - _loc2_) * 255);
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 §§push(this.§4!a§);
                                                                                                                                 if(!(_loc11_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(§§pop() > §?!A§)
                                                                                                                                    {
                                                                                                                                       if(_loc12_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(backgroundLayersSprite.numChildren > 0)
                                                                                                                                          {
                                                                                                                                             if(_loc12_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ = backgroundLayersSprite.getChildAt(0) as Sprite)
                                                                                                                                                {
                                                                                                                                                   if(_loc12_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      _loc8_.removeChild(this.§2!1§,true);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr379:
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(§"W§);
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(§-!_§);
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §"W§);
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * Math.random());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc11_ && this))
                                                                                                                                                {
                                                                                                                                                   addr401:
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                }
                                                                                                                                                §§pop().§4!a§ = §§pop();
                                                                                                                                                addr403:
                                                                                                                                                addr407:
                                                                                                                                                addr406:
                                                                                                                                                var _loc4_:*;
                                                                                                                                                §§push(_loc4_ = int(backgroundLayersSprite.numChildren - 1));
                                                                                                                                                if(_loc12_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc5_:* = §§pop();
                                                                                                                                                addr573:
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(_loc12_ || this)
                                                                                                                                                {
                                                                                                                                                   addr581:
                                                                                                                                                   §§push(1);
                                                                                                                                                   if(!(_loc11_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr589:
                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                      {
                                                                                                                                                         addr544:
                                                                                                                                                         _loc9_ = uint(_loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2));
                                                                                                                                                         addr501:
                                                                                                                                                         addr539:
                                                                                                                                                         addr543:
                                                                                                                                                         addr536:
                                                                                                                                                         addr535:
                                                                                                                                                         addr545:
                                                                                                                                                         if(_loc3_ == 255)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc11_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc11_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(255);
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     addr523:
                                                                                                                                                                     §§push(uint(§§pop()));
                                                                                                                                                                     if(!(_loc11_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                        addr531:
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        if(_loc12_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(16);
                                                                                                                                                                              if(_loc12_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc11_ && _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() << §§pop());
                                                                                                                                                                                    if(_loc12_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_ << 8);
                                                                                                                                                                                       if(_loc12_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc11_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + _loc9_);
                                                                                                                                                                                             if(_loc12_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc12_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc12_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr485:
                                                                                                                                                                                                      §§push(uint(§§pop()));
                                                                                                                                                                                                      if(!_loc11_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc12_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                                                                            if(_loc12_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc12_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr501);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  _loc1_ = backgroundLayersSprite.getChildAt(_loc5_);
                                                                                                                                                                                                                  if(_loc12_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc1_.color = _loc10_;
                                                                                                                                                                                                                     if(_loc12_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                        if(_loc12_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr573);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr531);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr593);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr501);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr523);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr539);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr543);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr593:
                                                                                                                                                                                          §§push(int(foregroundLayersSprite.numChildren - 1));
                                                                                                                                                                                          if(_loc12_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr597:
                                                                                                                                                                                             §§push(_loc4_ = §§pop());
                                                                                                                                                                                             if(_loc11_)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr601);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr601:
                                                                                                                                                                                          var _loc6_:* = int(§§pop());
                                                                                                                                                                                          §§goto(addr600);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr589);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr581);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr536);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr501);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr544);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr485);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr535);
                                                                                                                                                                  }
                                                                                                                                                                  addr600:
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     addr653:
                                                                                                                                                                     if(_loc6_ >= 0)
                                                                                                                                                                     {
                                                                                                                                                                        _loc1_ = foregroundLayersSprite.getChildAt(_loc6_);
                                                                                                                                                                        if(_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                           §§push((_loc9_ << 16) + (_loc9_ << 8));
                                                                                                                                                                           if(!_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + _loc9_);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().color = §§pop();
                                                                                                                                                                           if(!(_loc11_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(!(_loc11_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                              }
                                                                                                                                                                              _loc6_ = §§pop();
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr653);
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc12_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        groundSprite.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr545);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr531);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr593);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr597);
                                                                                                                                                }
                                                                                                                                                §§goto(addr601);
                                                                                                                                             }
                                                                                                                                             §§goto(addr401);
                                                                                                                                          }
                                                                                                                                          this.§2!1§ = null;
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             §§push(255);
                                                                                                                                             if(_loc12_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr379);
                                                                                                                                                }
                                                                                                                                                §§goto(addr403);
                                                                                                                                             }
                                                                                                                                             §§goto(addr407);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr379);
                                                                                                                                    }
                                                                                                                                    §§goto(addr403);
                                                                                                                                 }
                                                                                                                                 §§goto(addr406);
                                                                                                                              }
                                                                                                                              §§goto(addr379);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr210);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr181:
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           addr284:
                                                                                                                           §§push(this.§ $§);
                                                                                                                           while(§§pop() == 1)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr257:
                                                                                                                           return;
                                                                                                                           addr255:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 addr220:
                                                                                                                                 §§push(1);
                                                                                                                                 if(_loc12_)
                                                                                                                                 {
                                                                                                                                    addr191:
                                                                                                                                    §§goto(addr192);
                                                                                                                                    §§push(§§pop() - _loc7_);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr255);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§2E§);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr228:
                                                                                                                                          §§push(§?!A§ * 3);
                                                                                                                                          addr230:
                                                                                                                                          while(!_loc11_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr234:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!(_loc12_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr294:
                                                                                                                                                _loc2_ = Number(§§pop());
                                                                                                                                                addr295:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop10;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop1;
                                                                                                                                          §§goto(addr192);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr230);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr293);
                                                                                                                                 }
                                                                                                                                 addr220:
                                                                                                                                 addr292:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr209);
                                                                                                                           addr249:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr220);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr295);
                                                                                                                  }
                                                                                                                  addr289:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr291:
                                                                                                                     §§goto(addr292);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr217:
                                                                                                         }
                                                                                                         §§goto(addr289);
                                                                                                      }
                                                                                                      §§goto(addr233);
                                                                                                   }
                                                                                                   §§goto(addr220);
                                                                                                }
                                                                                                §§goto(addr227);
                                                                                             }
                                                                                             §§goto(addr206);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr191);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr156);
                                                                              }
                                                                              §§goto(addr149);
                                                                           }
                                                                           §§goto(addr152);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr269:
                                                                        §§push(this);
                                                                        §§push(this.§ $§ + 1);
                                                                        if(_loc12_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() % 2);
                                                                        }
                                                                        §§pop().§ $§ = §§pop();
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§goto(addr181);
                                                               }
                                                               §§goto(addr39);
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   §§goto(addr105);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr101);
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr206);
                                    }
                                    break;
                                 }
                                 §§goto(addr269);
                              }
                              if(_loc12_)
                              {
                                 if(_loc12_ || _loc1_)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr181);
                                 }
                                 §§goto(addr291);
                              }
                              §§goto(addr234);
                           }
                        }
                     }
                  }
                  §§goto(addr289);
               }
            }
         }
         §§goto(addr217);
      }
      
      private function §'"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§4!a§ > this.§'"1§)
            {
               loop0:
               for(; !this.§^"=§; do
               {
                  this.§^"=§ = true;
               }
               while(!(_loc2_ || _loc2_));
               ,if(_loc2_ || _loc1_)
               {
                  break;
               })
               {
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §>!E§.§@"8§("Lightning04","ChannelExplosions");
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr78);
      }
   }
}
