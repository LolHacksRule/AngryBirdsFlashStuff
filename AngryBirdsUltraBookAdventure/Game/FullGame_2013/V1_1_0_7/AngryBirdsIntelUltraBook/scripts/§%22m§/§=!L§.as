package §"m§
{
   import §8!A§.§-!i§;
   import §=`§.§6!I§;
   import §?]§.Texture;
   import §[!b§.§-!Q§;
   import §`g§.§ O§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §=!L§ extends §-!i§
   {
      
      private static const §>!P§:Number = 1.5;
      
      private static const §<d§:Number = 0.15;
      
      private static const §,?§:Number = 0.25;
      
      private static const §-!p§:Number = 3.0;
      
      private static const §<z§:Number = 20.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>!P§ = 1.5;
            loop0:
            while(true)
            {
               §<d§ = 0.15;
               while(true)
               {
                  §,?§ = 0.25;
                  continue loop0;
                  addr39:
                  if(!(_loc2_ && §=!L§))
                  {
                     return;
                     addr56:
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      private var §+V§:Number;
      
      private var §?5§:Number;
      
      private var §30§:§ O§;
      
      private var § !]§:Boolean;
      
      private var §<=§:Number;
      
      private var §1+§:BitmapData;
      
      private var §5$§:Texture;
      
      private var §4!u§:int = 0;
      
      public function §=!L§(param1:String, param2:Number, param3:§6!I§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
            do
            {
               §§push(this);
               §§push(3 + Math.random() * 3);
               if(!(_loc6_ && param2))
               {
                  §§push(-§§pop());
               }
               §§pop().§+V§ = §§pop();
            }
            while(_loc6_ && param2);
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§5$§)
            {
               loop0:
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§5$§);
                  addr110:
                  while(true)
                  {
                     this.§5$§ = null;
                     loop7:
                     while(_loc2_ || this)
                     {
                        addr102:
                        while(true)
                        {
                           if(!this.§1+§)
                           {
                              loop5:
                              while(true)
                              {
                                 super.dispose();
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       addr63:
                                       while(true)
                                       {
                                          this.§1+§.dispose();
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          continue loop0;
                                       }
                                       continue loop7;
                                    }
                                    continue loop7;
                                 }
                                 addr58:
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                              return;
                           }
                           §§goto(addr63);
                           §§goto(addr102);
                        }
                     }
                  }
               }
            }
            §§goto(addr59);
         }
         §§goto(addr110);
      }
      
      override protected function createGroundQuad(param1:uint) : § O§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            if(this.§5$§)
            {
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§5$§);
                  addr112:
                  while(true)
                  {
                     this.§5$§ = null;
                     addr94:
                     while(true)
                     {
                     }
                  }
                  loop6:
                  while(!(_loc4_ && param1))
                  {
                     loop7:
                     while(true)
                     {
                        this.§1+§ = new BitmapData(2,2,false,param1);
                        loop8:
                        while(!_loc4_)
                        {
                           addr46:
                           if(_loc3_ || _loc2_)
                           {
                              addr53:
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§5$§ = textureManager.getTextureFromBitmapData(this.§1+§);
                                    if(_loc3_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop7;
                                    }
                                    continue loop8;
                                 }
                                 var _loc2_:§ O§ = new §"<§(this.§5$§,true,false);
                                 if(_loc3_)
                                 {
                                    _loc2_.width = 4096;
                                 }
                                 do
                                 {
                                    _loc2_.height = 4096;
                                 }
                                 while(_loc4_);
                                 
                                 return _loc2_;
                                 addr65:
                              }
                              else
                              {
                                 addr82:
                              }
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       this.§1+§.dispose();
                                       while(true)
                                       {
                                          this.§1+§ = null;
                                          break loop8;
                                          §§goto(addr46);
                                       }
                                       addr89:
                                    }
                                    else
                                    {
                                       §§goto(addr112);
                                    }
                                 }
                                 break;
                                 §§goto(addr53);
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr89);
                        }
                        continue loop6;
                     }
                  }
               }
            }
            while(true)
            {
               if(this.§1+§)
               {
                  §§goto(addr82);
               }
               §§goto(addr35);
               §§goto(addr94);
            }
         }
         §§goto(addr65);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§30§);
            loop0:
            while(§§pop() != null)
            {
               §§push(this.§30§);
               if(!_loc3_)
               {
                  continue;
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(_loc2_)
                        {
                           break loop0;
                        }
                        this.§9x§();
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              while(true)
                              {
                                 this.§>4§();
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 addr120:
                                 while(true)
                                 {
                                 }
                              }
                              return;
                              addr72:
                              addr71:
                           }
                           else
                           {
                              §§goto(addr120);
                           }
                           addr78:
                           while(true)
                           {
                              §§goto(addr72);
                           }
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr71);
                        }
                     }
                     addr118:
                     while(true)
                     {
                        this.§4!,§();
                        §§goto(addr120);
                     }
                  }
               }
               §§goto(addr72);
            }
            while(true)
            {
               if(this.§+V§ > 0)
               {
                  §§goto(addr118);
               }
               §§goto(addr78);
            }
         }
         §§goto(addr72);
      }
      
      private function §4!,§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!(_loc3_ && this))
         {
            if(§8y§.numChildren > 0)
            {
               addr34:
               _loc1_ = §8y§.getChildAt(0) as Sprite;
               if(_loc4_ || this)
               {
                  if(_loc1_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(!_loc3_)
                        {
                           _loc2_.top -= 2048;
                           loop0:
                           while(true)
                           {
                              this.§30§ = new § O§(_loc2_.width,_loc2_.height,16777215);
                              loop1:
                              while(true)
                              {
                                 §§push(this.§30§);
                                 while(true)
                                 {
                                    §§pop().x = _loc2_.left;
                                    continue loop1;
                                    addr106:
                                    loop4:
                                    for(; _loc4_ || this; while(true)
                                    {
                                       §§push(this.§30§);
                                       if(_loc3_ && _loc3_)
                                       {
                                          break;
                                       }
                                       §§pop().alpha = 0;
                                       §§goto(addr91);
                                    })
                                    {
                                       §§pop().y = _loc2_.top;
                                       loop5:
                                       while(true)
                                       {
                                          continue loop4;
                                          addr91:
                                          while(true)
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                             continue loop5;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr260);
                  }
                  §§goto(addr159);
               }
               §§goto(addr248);
            }
            §§goto(addr265);
         }
         §§goto(addr34);
      }
      
      private function §9x§() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc7_:* = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(!(_loc12_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc11_)
         {
            §§push(this.§+V§);
            loop0:
            while(true)
            {
               §§push(§<d§);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(this.§+V§);
                     loop2:
                     while(true)
                     {
                        §§push(§<d§);
                        loop3:
                        while(!(_loc12_ && _loc3_))
                        {
                           §§push(this.§?5§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              loop5:
                              while(true)
                              {
                                 if(!(_loc12_ && _loc1_))
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(this.§+V§);
                                       if(!_loc12_)
                                       {
                                          if(!_loc12_)
                                          {
                                             if(_loc11_)
                                             {
                                                if(_loc11_ || this)
                                                {
                                                   §§push(§<d§);
                                                   if(!_loc12_)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         §§push(this.§?5§);
                                                         if(!_loc11_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc11_)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§,?§);
                                                               continue loop4;
                                                            }
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               addr254:
                                                               while(true)
                                                               {
                                                                  if(_loc11_ || _loc2_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop22:
                                                                     while(_loc11_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           addr206:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    addr210:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Math.random() * _loc7_);
                                                                                       addr214:
                                                                                       while(_loc11_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 addr209:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() != 1)
                                                                                    {
                                                                                       loop12:
                                                                                       while(_loc12_ && this)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§+V§);
                                                                                             addr345:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§<d§);
                                                                                                addr346:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   addr347:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr348:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr43:
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§30§.alpha = _loc2_;
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     if(_loc11_ || _loc1_)
                                                                                                                     {
                                                                                                                        if(_loc12_ && _loc2_)
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        while(false)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc3_:uint = Math.round((1 - _loc2_) * 255);
                                                                                                                        if(!(_loc12_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(this.§+V§);
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              if(§§pop() > §>!P§)
                                                                                                                              {
                                                                                                                                 if(!(_loc12_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(§8y§.numChildren > 0)
                                                                                                                                    {
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          addr385:
                                                                                                                                          if(_loc8_ = §8y§.getChildAt(0) as Sprite)
                                                                                                                                          {
                                                                                                                                             if(!(_loc12_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                _loc8_.removeChild(this.§30§,true);
                                                                                                                                                addr406:
                                                                                                                                                this.§30§ = null;
                                                                                                                                                if(_loc11_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(255);
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      if(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         addr423:
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(§-!p§);
                                                                                                                                                         if(_loc11_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§<z§);
                                                                                                                                                            if(_loc11_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §-!p§);
                                                                                                                                                               if(!(_loc12_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  addr444:
                                                                                                                                                                  §§push(§§pop() * Math.random());
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  addr451:
                                                                                                                                                                  §§pop().§+V§ = -§§pop();
                                                                                                                                                                  addr452:
                                                                                                                                                                  addr456:
                                                                                                                                                                  addr455:
                                                                                                                                                                  var _loc4_:*;
                                                                                                                                                                  §§push(_loc4_ = int(§8y§.numChildren - 1));
                                                                                                                                                                  if(!(_loc12_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  var _loc5_:* = §§pop();
                                                                                                                                                                  loop35:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(!_loc12_)
                                                                                                                                                                     {
                                                                                                                                                                        loop36:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(1);
                                                                                                                                                                           if(!_loc12_)
                                                                                                                                                                           {
                                                                                                                                                                              loop37:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                    loop38:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * (§§pop() + _loc4_));
                                                                                                                                                                                          if(!_loc12_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() / (_loc4_ * 2));
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(uint(§§pop()));
                                                                                                                                                                                             loop41:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                                                                if(!(_loc12_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop42:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                      loop43:
                                                                                                                                                                                                      while(!_loc12_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(255);
                                                                                                                                                                                                         loop44:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc11_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(255);
                                                                                                                                                                                                                  if(_loc12_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(uint(§§pop()));
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc9_ = §§pop();
                                                                                                                                                                                                                     addr541:
                                                                                                                                                                                                                     addr507:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc11_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc12_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc10_ = §§pop();
                                                                                                                                                                                                                           if(!_loc11_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr594:
                                                                                                                                                                                                                              §§push(int(§[f§.numChildren - 1));
                                                                                                                                                                                                                              if(!_loc12_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 break loop36;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              var _loc6_:* = int(§§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc12_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr541);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc1_ = §8y§.getChildAt(_loc5_);
                                                                                                                                                                                                                              if(_loc11_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc1_.color = _loc10_;
                                                                                                                                                                                                                                 if(_loc12_ && _loc1_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                              if(_loc11_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc5_ = §§pop();
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop42;
                                                                                                                                                                                                                           continue loop35;
                                                                                                                                                                                                                           §§goto(addr597);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop38;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr594);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                               if(_loc11_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc12_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop44;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop43;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr507);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop37;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop36;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop41;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr597:
                                                                                                                                                                                 addr605:
                                                                                                                                                                                 §§goto(addr604);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                        if(!_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                           addr604:
                                                                                                                                                                           if(!(_loc12_ && _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              addr657:
                                                                                                                                                                              if(_loc6_ >= 0)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc1_ = §[f§.getChildAt(_loc6_);
                                                                                                                                                                                 if(!_loc12_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                    §§push((_loc9_ << 16) + (_loc9_ << 8));
                                                                                                                                                                                    if(_loc11_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + _loc9_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().color = §§pop();
                                                                                                                                                                                    if(!_loc12_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr652:
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       if(!_loc12_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr657);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr652);
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 §!!u§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           return;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr597);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr451);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr444);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr451);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr452);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr456);
                                                                                                                                                }
                                                                                                                                                §§goto(addr451);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr406);
                                                                                                                                       }
                                                                                                                                       §§goto(addr423);
                                                                                                                                    }
                                                                                                                                    §§goto(addr406);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr451);
                                                                                                                           }
                                                                                                                           §§goto(addr455);
                                                                                                                        }
                                                                                                                        §§goto(addr385);
                                                                                                                     }
                                                                                                                     else if(!_loc12_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§>!P§);
                                                                                                                           addr240:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§?5§);
                                                                                                                              addr242:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc12_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    §§push(§>!P§);
                                                                                                                                    continue loop6;
                                                                                                                                 }
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr238:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc12_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.§4!u§ + 1);
                                                                                                                           if(!(_loc12_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() % 2);
                                                                                                                           }
                                                                                                                           §§pop().§4!u§ = §§pop();
                                                                                                                        }
                                                                                                                        addr306:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(_loc12_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr68);
                                                                                                                     addr235:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr196:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc12_ && this))
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  addr196:
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
                                                                                    §§goto(addr238);
                                                                                 }
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                     addr262:
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                            }
                                                            addr253:
                                                         }
                                                         else
                                                         {
                                                            addr111:
                                                            if(!_loc12_)
                                                            {
                                                               if(!(_loc12_ && _loc1_))
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(_loc11_ || _loc1_)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc11_ || _loc3_)
                                                                        {
                                                                           §§push(this.§+V§);
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              §§push(§<d§);
                                                                              if(_loc11_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() + this.§?5§);
                                                                                 if(!(_loc12_ && this))
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          addr175:
                                                                                          §§push(§§pop() - §§pop() / §,?§);
                                                                                          if(!(_loc12_ && _loc1_))
                                                                                          {
                                                                                             addr183:
                                                                                             if(_loc12_ && _loc1_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr193:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   §§goto(addr196);
                                                                                                }
                                                                                                §§goto(addr210);
                                                                                             }
                                                                                             §§goto(addr347);
                                                                                          }
                                                                                          §§goto(addr193);
                                                                                       }
                                                                                       §§goto(addr209);
                                                                                    }
                                                                                    §§goto(addr175);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr175);
                                                                        }
                                                                        §§goto(addr206);
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr43);
                                                               }
                                                               §§goto(addr242);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr253);
                                                         }
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr111);
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr262);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!(_loc12_ && _loc1_))
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr348);
                                                }
                                             }
                                             addr225:
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr306);
                                 }
                                 §§goto(addr346);
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr343);
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §>4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§+V§ > this.§<=§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr79:
                  if(!this.§ !]§)
                  {
                     while(true)
                     {
                        §-!Q§.§7"$§("Lightning04","ChannelExplosions");
                     }
                     addr82:
                  }
                  §§goto(addr24);
               }
               while(true)
               {
                  this.§ !]§ = true;
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  §§goto(addr82);
               }
            }
            addr24:
            return;
         }
         §§goto(addr79);
      }
   }
}
