package §_-NT§
{
   import §_-4g§.Texture;
   import §_-ia§.deg2rad;
   import flash.display3D.Context3DBlendFactor;
   
   public class §_-7F§ extends §_-2S§
   {
       
      
      private const §_-K3§:int = 0;
      
      private const §_-kO§:int = 1;
      
      private var §_-7c§:Number;
      
      private var §_-Vj§:int;
      
      private var §_-SR§:Number;
      
      private var §_-s2§:Number;
      
      private var §_-lJ§:int;
      
      private var §_-gp§:Number;
      
      private var §_-n§:Number;
      
      private var §_-Sv§:Number;
      
      private var §_-rG§:Number;
      
      private var §_-ol§:Number;
      
      private var §_-Zm§:Number;
      
      private var §_-Gs§:Number;
      
      private var §_-X1§:Number;
      
      private var §_-80§:Number;
      
      private var §_-PW§:Number;
      
      private var §_-JX§:Number;
      
      private var §_-p-§:Number;
      
      private var §_-VK§:Number;
      
      private var §_-4v§:Number;
      
      private var §_-jW§:Number;
      
      private var §_-HN§:Number;
      
      private var §_-Tq§:Number;
      
      private var §_-n2§:Number;
      
      private var §_-Ua§:Number;
      
      private var §_-HQ§:Number;
      
      private var §_-rf§:Number;
      
      private var §_-ic§:ColorArgb;
      
      private var §_-zn§:ColorArgb;
      
      private var §_-ak§:ColorArgb;
      
      private var §_-XS§:ColorArgb;
      
      public function §_-7F§(param1:XML, param2:Texture)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§_-qB§(param1);
         }
         §§push(this.§_-lJ§ / this.§_-gp§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            super(param2,_loc3_,this.§_-lJ§,§_-pM§,§_-Wx§);
            if(_loc5_)
            {
               §_-Cr§ = false;
            }
         }
      }
      
      override protected function createParticle() : §_-Eo§
      {
         return new PDParticle();
      }
      
      override protected function initParticle(param1:§_-Eo§) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:PDParticle = null;
         _loc2_ = param1 as PDParticle;
         §§push(this.§_-gp§);
         if(_loc14_ || param1)
         {
            §§push(this.§_-n§);
            if(_loc14_)
            {
               §§push(Math.random() * 2);
               if(!_loc15_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc15_ && param1))
         {
            §§push(0);
            if(_loc14_ || _loc2_)
            {
               if(§§pop() <= §§pop())
               {
                  return;
               }
               _loc2_.§_-mm§ = 0;
               _loc2_.§_-UL§ = _loc3_;
               if(!(_loc15_ && this))
               {
                  _loc2_.x = §_-CF§ + this.§_-SR§ * (Math.random() * 2 - 1);
                  _loc2_.y = §_-Pd§ + this.§_-s2§ * (Math.random() * 2 - 1);
                  _loc2_.startX = §_-CF§;
                  if(!_loc15_)
                  {
                     _loc2_.startY = §_-Pd§;
                  }
               }
               addr157:
               addr158:
               §§push(this.§_-Gs§);
               if(!(_loc15_ && param1))
               {
                  §§push(this.§_-X1§);
                  if(_loc14_ || _loc3_)
                  {
                     §§push(Math.random() * 2);
                     if(_loc14_ || param1)
                     {
                        §§push(§§pop() - 1);
                     }
                     §§push(§§pop() * §§pop());
                  }
               }
               var _loc4_:Number = §§pop();
               §§push(this.§_-80§);
               if(_loc14_ || _loc3_)
               {
                  §§push(this.§_-PW§);
                  if(!(_loc15_ && _loc2_))
                  {
                     §§push(Math.random() * 2);
                     if(!(_loc15_ && _loc3_))
                     {
                        §§push(§§pop() - 1);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc15_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               §§push(_loc2_);
               §§push(_loc5_);
               if(!_loc15_)
               {
                  §§push(§§pop() * Math.cos(_loc4_));
               }
               §§pop().velocityX = §§pop();
               §§push(_loc2_);
               §§push(_loc5_);
               if(_loc14_)
               {
                  §§push(§§pop() * Math.sin(_loc4_));
               }
               §§pop().velocityY = §§pop();
               §§push(_loc2_);
               §§push(this.§_-Tq§);
               if(!_loc15_)
               {
                  §§push(this.§_-n2§);
                  if(!_loc15_)
                  {
                     §§push(Math.random() * 2);
                     if(_loc14_ || this)
                     {
                        §§push(§§pop() - 1);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().radius = §§pop();
               if(!_loc15_)
               {
                  §§push(_loc2_);
                  §§push(this.§_-Tq§);
                  if(_loc14_)
                  {
                     §§push(§§pop() / _loc3_);
                  }
                  §§pop().radiusDelta = §§pop();
                  §§push(_loc2_);
                  §§push(this.§_-Gs§);
                  if(!_loc15_)
                  {
                     §§push(this.§_-X1§);
                     if(!_loc15_)
                     {
                        §§push(Math.random() * 2);
                        if(_loc14_)
                        {
                           §§push(§§pop() - 1);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().rotation = §§pop();
                  if(!(_loc15_ && param1))
                  {
                     §§push(_loc2_);
                     §§push(this.§_-HQ§);
                     if(_loc14_)
                     {
                        §§push(this.§_-rf§);
                        if(_loc14_ || this)
                        {
                           §§push(Math.random() * 2);
                           if(!(_loc15_ && this))
                           {
                              §§push(§§pop() - 1);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().rotationDelta = §§pop();
                  }
               }
               _loc2_.radialAcceleration = this.§_-VK§;
               _loc2_.tangentialAcceleration = this.§_-jW§;
               §§push(this.§_-Sv§);
               if(!_loc15_)
               {
                  §§push(this.§_-rG§);
                  if(!(_loc15_ && _loc3_))
                  {
                     §§push(Math.random() * 2);
                     if(_loc14_ || _loc3_)
                     {
                        §§push(§§pop() - 1);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc14_ || _loc2_)
                  {
                     addr349:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  §§push(this.§_-ol§);
                  if(!_loc15_)
                  {
                     §§push(this.§_-Zm§);
                     if(_loc14_ || _loc2_)
                     {
                        §§push(Math.random() * 2);
                        if(_loc14_ || this)
                        {
                           §§push(§§pop() - 1);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc15_ && param1))
                     {
                        addr385:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(!_loc15_)
                     {
                        §§push(_loc6_);
                        if(!_loc15_)
                        {
                           §§push(0.1);
                           if(_loc14_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc14_ || _loc2_)
                                 {
                                    §§push(0.1);
                                    if(!(_loc15_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc14_)
                                       {
                                          _loc6_ = §§pop();
                                          if(!_loc15_)
                                          {
                                             addr417:
                                             §§push(_loc7_);
                                             if(!(_loc15_ && param1))
                                             {
                                                addr425:
                                                addr426:
                                                if(§§pop() < 0.1)
                                                {
                                                   §§push(0.1);
                                                   if(!_loc15_)
                                                   {
                                                      addr430:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc7_ = §§pop();
                                                   if(_loc14_ || _loc3_)
                                                   {
                                                   }
                                                   addr447:
                                                   §§push(_loc2_);
                                                   §§push(_loc7_);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc14_ || _loc2_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc14_)
                                                         {
                                                            addr463:
                                                            §§push(§§pop() / _loc3_);
                                                            if(_loc15_ && param1)
                                                            {
                                                            }
                                                            addr474:
                                                            §§pop().scaleDelta = §§pop();
                                                            addr475:
                                                            var _loc8_:ColorArgb = _loc2_.colorArgb;
                                                            var _loc9_:ColorArgb = _loc2_.colorArgbDelta;
                                                            _loc8_.red = this.§_-ic§.red;
                                                            _loc8_.green = this.§_-ic§.green;
                                                            if(_loc14_)
                                                            {
                                                               _loc8_.blue = this.§_-ic§.blue;
                                                               _loc8_.alpha = this.§_-ic§.alpha;
                                                            }
                                                            §§push(this.§_-zn§);
                                                            if(!(_loc15_ && this))
                                                            {
                                                               §§push(§§pop().red);
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  §§push(0);
                                                                  if(_loc14_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        if(_loc14_ || param1)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           §§push(_loc8_.red);
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(this.§_-zn§.red);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(Math.random() * 2);
                                                                                 if(!(_loc15_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§pop().red = §§pop();
                                                                           addr565:
                                                                           §§push(this.§_-zn§);
                                                                           if(_loc14_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop().green);
                                                                              if(!(_loc15_ && this))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!(_loc15_ && param1))
                                                                                 {
                                                                                    addr590:
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr593:
                                                                                          §§push(_loc8_);
                                                                                          §§push(_loc8_.green);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(this.§_-zn§.green);
                                                                                             if(_loc14_ || _loc2_)
                                                                                             {
                                                                                                §§push(Math.random() * 2);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(§§pop() - 1);
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§pop().green = §§pop();
                                                                                       }
                                                                                    }
                                                                                    §§push(this.§_-zn§);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       addr622:
                                                                                       §§push(§§pop().blue);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc14_ || _loc3_)
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                §§push(_loc8_.blue);
                                                                                                if(_loc14_ || _loc2_)
                                                                                                {
                                                                                                   §§push(this.§_-zn§.blue);
                                                                                                   if(_loc14_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(Math.random() * 2);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§push(§§pop() - 1);
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().blue = §§pop();
                                                                                                if(!(_loc15_ && _loc2_))
                                                                                                {
                                                                                                   addr671:
                                                                                                   §§push(this.§_-zn§.alpha);
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      addr677:
                                                                                                      addr676:
                                                                                                      if(§§pop() != 0)
                                                                                                      {
                                                                                                         addr678:
                                                                                                         §§push(_loc8_);
                                                                                                         §§push(_loc8_.alpha);
                                                                                                         if(!(_loc15_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(this.§_-zn§.alpha);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               §§push(Math.random() * 2);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§pop().alpha = §§pop();
                                                                                                      }
                                                                                                      §§push(this.§_-ak§.red);
                                                                                                      if(_loc14_ || _loc2_)
                                                                                                      {
                                                                                                         addr714:
                                                                                                         var _loc10_:Number = §§pop();
                                                                                                         §§push(this.§_-ak§.green);
                                                                                                         if(!(_loc15_ && param1))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc11_:* = §§pop();
                                                                                                         §§push(this.§_-ak§.blue);
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc12_:* = §§pop();
                                                                                                         §§push(this.§_-ak§.alpha);
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc13_:* = §§pop();
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            §§push(this.§_-XS§);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               §§push(§§pop().red);
                                                                                                               §§push(0);
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  if(§§pop() != §§pop())
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     §§push(this.§_-XS§);
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().red);
                                                                                                                        if(_loc14_ || this)
                                                                                                                        {
                                                                                                                           §§push(Math.random() * 2);
                                                                                                                           if(!(_loc15_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr778:
                                                                                                                              _loc10_ = §§pop() + §§pop() * (§§pop() - 1);
                                                                                                                              §§push(this.§_-XS§);
                                                                                                                              if(_loc14_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().green);
                                                                                                                                 §§push(0);
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          §§push(this.§_-XS§);
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             addr802:
                                                                                                                                             §§push(§§pop().green);
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(Math.random() * 2 - 1);
                                                                                                                                                if(_loc14_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc14_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc14_ || this)
                                                                                                                                                         {
                                                                                                                                                            _loc11_ = §§pop();
                                                                                                                                                            addr837:
                                                                                                                                                            §§push(this.§_-XS§);
                                                                                                                                                            if(_loc14_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr846:
                                                                                                                                                               §§push(§§pop().blue);
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     addr852:
                                                                                                                                                                     if(§§pop() != §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc15_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr860:
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           §§push(this.§_-XS§);
                                                                                                                                                                           if(_loc14_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr875:
                                                                                                                                                                              §§push(§§pop().blue);
                                                                                                                                                                              §§push(Math.random() * 2 - 1);
                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr879:
                                                                                                                                                                                 §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                 if(!(_loc15_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr888:
                                                                                                                                                                                    _loc12_ = §§pop();
                                                                                                                                                                                    addr889:
                                                                                                                                                                                    §§push(this.§_-XS§.alpha);
                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr894:
                                                                                                                                                                                       addr895:
                                                                                                                                                                                       if(§§pop() != 0)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr899:
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          §§push(this.§_-XS§.alpha);
                                                                                                                                                                                          §§push(Math.random() * 2);
                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr910:
                                                                                                                                                                                             _loc13_ = Number(§§pop() + §§pop() * (§§pop() - 1));
                                                                                                                                                                                             addr907:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr907);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       if(!(_loc15_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_.red);
                                                                                                                                                                                          if(_loc14_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr933:
                                                                                                                                                                                                §§push(§§pop() / _loc3_);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().red = §§pop();
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc8_.green);
                                                                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr952:
                                                                                                                                                                                                      §§push(§§pop() / _loc3_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().green = §§pop();
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                   if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc8_.blue);
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr972:
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().blue = §§pop();
                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc8_.alpha);
                                                                                                                                                                                                            if(!(_loc15_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr997:
                                                                                                                                                                                                                  §§push(§§pop() / _loc3_);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().alpha = §§pop();
                                                                                                                                                                                                               return;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr997);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr972);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr952);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr933);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr910);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr894);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr910);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr899);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr972);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr889);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr895);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr888);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr894);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr910);
                                                                                                                                                }
                                                                                                                                                §§goto(addr875);
                                                                                                                                             }
                                                                                                                                             §§goto(addr879);
                                                                                                                                          }
                                                                                                                                          §§goto(addr899);
                                                                                                                                       }
                                                                                                                                       §§goto(addr860);
                                                                                                                                    }
                                                                                                                                    §§goto(addr837);
                                                                                                                                 }
                                                                                                                                 §§goto(addr852);
                                                                                                                              }
                                                                                                                              §§goto(addr888);
                                                                                                                           }
                                                                                                                           §§goto(addr879);
                                                                                                                        }
                                                                                                                        §§goto(addr778);
                                                                                                                     }
                                                                                                                     §§goto(addr802);
                                                                                                                  }
                                                                                                                  §§goto(addr778);
                                                                                                               }
                                                                                                               §§goto(addr852);
                                                                                                            }
                                                                                                            §§goto(addr846);
                                                                                                         }
                                                                                                         §§goto(addr837);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr714);
                                                                                                }
                                                                                                §§goto(addr678);
                                                                                             }
                                                                                             §§goto(addr671);
                                                                                          }
                                                                                          §§goto(addr677);
                                                                                       }
                                                                                       §§goto(addr714);
                                                                                    }
                                                                                    §§goto(addr671);
                                                                                 }
                                                                                 §§goto(addr677);
                                                                              }
                                                                              §§goto(addr714);
                                                                           }
                                                                           §§goto(addr622);
                                                                        }
                                                                        §§goto(addr593);
                                                                     }
                                                                     §§goto(addr565);
                                                                  }
                                                                  §§goto(addr590);
                                                               }
                                                               §§goto(addr676);
                                                            }
                                                            §§goto(addr622);
                                                         }
                                                         §§goto(addr474);
                                                         §§push(§§pop() / texture.width);
                                                      }
                                                   }
                                                   §§goto(addr463);
                                                }
                                                §§push(_loc2_);
                                                §§push(_loc6_);
                                                if(_loc14_)
                                                {
                                                   §§push(§§pop() / texture.width);
                                                }
                                                §§pop().scale = §§pop();
                                                §§goto(addr447);
                                             }
                                          }
                                          §§goto(addr447);
                                       }
                                       §§goto(addr425);
                                    }
                                    §§goto(addr430);
                                 }
                                 §§goto(addr447);
                              }
                              §§goto(addr417);
                           }
                           §§goto(addr426);
                        }
                        §§goto(addr425);
                     }
                     §§goto(addr475);
                  }
                  §§goto(addr385);
               }
               §§goto(addr349);
            }
            §§push(§§pop() + §§pop());
            if(_loc14_ || this)
            {
               §§goto(addr157);
            }
            §§goto(addr158);
         }
         §§goto(addr157);
      }
      
      override protected function advanceParticle(param1:§_-Eo§, param2:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc3_:PDParticle = param1 as PDParticle;
         §§push(_loc3_.§_-UL§ - _loc3_.§_-mm§);
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc14_)
         {
            §§push(param2);
            if(_loc14_)
            {
               §§push(§§pop() > §§pop());
               if(_loc14_)
               {
                  if(§§pop())
                  {
                     if(_loc14_ || this)
                     {
                        §§push(param2);
                        if(_loc14_)
                        {
                           addr69:
                           param2 = Number(§§pop());
                           if(_loc14_)
                           {
                              _loc3_.§_-mm§ += param2;
                              if(!(_loc13_ && this))
                              {
                                 if(this.§_-Vj§ == this.§_-kO§)
                                 {
                                    §§push(_loc3_.skipUpdate);
                                    if(!(_loc13_ && param2))
                                    {
                                       addr100:
                                       if(!§§pop())
                                       {
                                          if(_loc14_)
                                          {
                                             _loc3_.rotation += _loc3_.rotationDelta * param2 * 2;
                                             if(_loc14_ || this)
                                             {
                                                §§push(_loc3_);
                                                §§push(_loc3_.radius);
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc3_.radiusDelta);
                                                   if(!(_loc13_ && param2))
                                                   {
                                                      addr142:
                                                      §§push(§§pop() * param2);
                                                      if(_loc14_)
                                                      {
                                                         addr139:
                                                         §§push(§§pop() * 2);
                                                      }
                                                      §§pop().radius = §§pop() - §§pop();
                                                      if(_loc14_)
                                                      {
                                                         _loc3_.x = §_-CF§ - Math.cos(_loc3_.rotation) * _loc3_.radius;
                                                         if(_loc14_ || _loc3_)
                                                         {
                                                            _loc3_.y = §_-Pd§ - Math.sin(_loc3_.rotation) * _loc3_.radius;
                                                            addr174:
                                                            if(_loc3_.radius < this.§_-Ua§)
                                                            {
                                                               addr179:
                                                               _loc3_.§_-mm§ = _loc3_.§_-UL§;
                                                               addr496:
                                                               if(!_loc3_.skipUpdate)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     addr501:
                                                                     §§push(param2);
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr507:
                                                                        param2 = §§pop() * 2;
                                                                        _loc3_.scale += _loc3_.scaleDelta * param2;
                                                                        if(!(_loc13_ && this))
                                                                        {
                                                                           addr524:
                                                                           §§push(_loc3_.colorArgb);
                                                                           if(_loc14_)
                                                                           {
                                                                              §§push(_loc3_.colorArgb);
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                                 §§push(§§pop().red);
                                                                                 §§push(_loc3_.colorArgbDelta);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(§§pop().red);
                                                                                    §§push(param2);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§pop().red = §§pop() + §§pop() * §§pop();
                                                                                       if(!(_loc13_ && this))
                                                                                       {
                                                                                          §§push(_loc3_.colorArgb);
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             addr560:
                                                                                             §§push(_loc3_.colorArgb);
                                                                                             if(!(_loc13_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop().green);
                                                                                                §§push(_loc3_.colorArgbDelta);
                                                                                                if(!(_loc13_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop().green);
                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(param2);
                                                                                                      if(_loc14_ || _loc3_)
                                                                                                      {
                                                                                                         addr596:
                                                                                                         §§pop().green = §§pop() + §§pop() * §§pop();
                                                                                                         §§push(_loc3_.colorArgb);
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            addr602:
                                                                                                            §§push(_loc3_.colorArgb);
                                                                                                            if(_loc14_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop().blue);
                                                                                                               §§push(_loc3_.colorArgbDelta);
                                                                                                               if(_loc14_ || param1)
                                                                                                               {
                                                                                                                  addr621:
                                                                                                                  §§push(§§pop().blue);
                                                                                                                  §§push(param2);
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     addr625:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        §§pop().blue = §§pop();
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           addr643:
                                                                                                                           _loc3_.colorArgb.alpha += _loc3_.colorArgbDelta.alpha * param2;
                                                                                                                           _loc3_.color = _loc3_.colorArgb.toRgb();
                                                                                                                           addr641:
                                                                                                                           addr639:
                                                                                                                           addr636:
                                                                                                                           addr634:
                                                                                                                           addr632:
                                                                                                                        }
                                                                                                                        _loc3_.alpha = _loc3_.colorArgb.alpha;
                                                                                                                        §§goto(addr654);
                                                                                                                     }
                                                                                                                     §§goto(addr643);
                                                                                                                  }
                                                                                                                  §§goto(addr641);
                                                                                                               }
                                                                                                               §§goto(addr639);
                                                                                                            }
                                                                                                            §§goto(addr636);
                                                                                                         }
                                                                                                         §§goto(addr634);
                                                                                                      }
                                                                                                      §§goto(addr625);
                                                                                                   }
                                                                                                   §§goto(addr596);
                                                                                                }
                                                                                                §§goto(addr621);
                                                                                             }
                                                                                             §§goto(addr643);
                                                                                          }
                                                                                          §§goto(addr602);
                                                                                       }
                                                                                       §§goto(addr654);
                                                                                    }
                                                                                    §§goto(addr596);
                                                                                 }
                                                                                 §§goto(addr621);
                                                                              }
                                                                              §§goto(addr643);
                                                                           }
                                                                           §§goto(addr560);
                                                                        }
                                                                        addr654:
                                                                        §§push(_loc3_);
                                                                        §§push(_loc3_.skipUpdate);
                                                                        if(_loc14_ || param2)
                                                                        {
                                                                           §§push(!§§pop());
                                                                        }
                                                                        §§pop().skipUpdate = §§pop();
                                                                        return;
                                                                        addr506:
                                                                        addr504:
                                                                     }
                                                                     §§goto(addr507);
                                                                  }
                                                                  §§goto(addr643);
                                                               }
                                                               §§goto(addr654);
                                                               addr183:
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr501);
                                                      }
                                                      else
                                                      {
                                                         addr424:
                                                         §§push(_loc3_);
                                                         §§push(_loc3_.velocityY);
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            §§push(2 * param2);
                                                            if(_loc14_ || param2)
                                                            {
                                                               §§push(this.§_-p-§);
                                                               if(_loc14_ || param1)
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr466:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        §§push(_loc11_);
                                                                     }
                                                                     §§pop().velocityY = §§pop() + §§pop() * §§pop();
                                                                     if(!(_loc13_ && param2))
                                                                     {
                                                                        addr476:
                                                                        _loc3_.x += _loc3_.velocityX * param2;
                                                                        addr485:
                                                                        _loc3_.y += _loc3_.velocityY * param2;
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§goto(addr496);
                                                                        }
                                                                        §§goto(addr654);
                                                                     }
                                                                     §§goto(addr507);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr466);
                                                      }
                                                   }
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr142);
                                             }
                                             else
                                             {
                                                addr253:
                                                §§push(_loc6_ / _loc7_);
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc9_ = §§pop();
                                                §§push(_loc8_);
                                                if(_loc14_ || param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc14_)
                                                   {
                                                      _loc10_ = §§pop();
                                                      addr278:
                                                      _loc11_ = Number(_loc9_);
                                                      §§push(_loc8_);
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         §§push(_loc3_.radialAcceleration);
                                                         if(_loc14_ || _loc3_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc13_ && param1))
                                                            {
                                                               _loc8_ = Number(§§pop());
                                                               addr308:
                                                               §§push(Number(_loc9_ * _loc3_.radialAcceleration));
                                                               if(_loc14_ || param1)
                                                               {
                                                                  addr319:
                                                                  _loc9_ = §§pop();
                                                                  §§push(Number(_loc10_));
                                                                  if(_loc14_ || param1)
                                                                  {
                                                                     _loc12_ = §§pop();
                                                                     if(_loc14_ || _loc3_)
                                                                     {
                                                                        addr344:
                                                                        §§push(_loc11_);
                                                                        if(_loc14_ || this)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(_loc3_.tangentialAcceleration);
                                                                              if(_loc14_ || param1)
                                                                              {
                                                                                 addr364:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc13_ && param2))
                                                                                 {
                                                                                    addr388:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!(_loc13_ && _loc3_))
                                                                                    {
                                                                                       addr380:
                                                                                       _loc10_ = §§pop();
                                                                                       §§push(_loc12_);
                                                                                       §§push(_loc3_.tangentialAcceleration);
                                                                                    }
                                                                                    _loc11_ = §§pop();
                                                                                    §§push(_loc3_);
                                                                                    §§push(_loc3_.velocityX);
                                                                                    if(!(_loc13_ && _loc3_))
                                                                                    {
                                                                                       §§push(2 * param2);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§push(this.§_-JX§);
                                                                                          if(_loc14_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                addr421:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                }
                                                                                                §§pop().velocityX = §§pop() + §§pop() * §§pop();
                                                                                                §§goto(addr424);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr421);
                                                                                 }
                                                                                 §§goto(addr380);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc13_)
                                                                              {
                                                                                 addr387:
                                                                                 §§goto(addr388);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr506);
                                                                           }
                                                                           §§goto(addr380);
                                                                        }
                                                                        §§goto(addr507);
                                                                     }
                                                                     §§goto(addr524);
                                                                  }
                                                                  §§goto(addr504);
                                                               }
                                                               §§goto(addr507);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr364);
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                }
                                                §§goto(addr308);
                                             }
                                          }
                                          §§goto(addr485);
                                       }
                                       §§goto(addr496);
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc3_.skipUpdate);
                                    if(!_loc13_)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(_loc3_.x - _loc3_.startX);
                                          if(!_loc13_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc13_)
                                             {
                                                addr199:
                                                _loc5_ = §§pop();
                                                if(!(_loc13_ && param2))
                                                {
                                                   §§push(Number(_loc3_.y - _loc3_.startY));
                                                   if(!_loc13_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                      §§push(Number(Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)));
                                                      if(!(_loc13_ && this))
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(§§pop() < 0.01)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               _loc7_ = Number(0.01);
                                                               if(_loc14_)
                                                               {
                                                                  addr244:
                                                                  §§push(Number(_loc5_ / _loc7_));
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§goto(addr253);
                                                                     }
                                                                     §§goto(addr632);
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                         }
                                                         §§goto(addr244);
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                   §§goto(addr319);
                                                }
                                                §§goto(addr424);
                                             }
                                             §§goto(addr507);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr476);
                                    }
                                 }
                                 §§goto(addr496);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr507);
                     }
                     §§goto(addr424);
                  }
                  else
                  {
                     §§push(Number(_loc4_));
                  }
                  §§goto(addr69);
               }
               §§goto(addr100);
            }
            §§goto(addr253);
         }
         §§goto(addr319);
      }
      
      private function §_-qB§(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = param1;
            §§push(§§newactivation());
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[2] = function(param1:XMLList):int
               {
                  return parseInt(param1.attribute("value"));
               };
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[3] = function(param1:XMLList):Number
                  {
                     return parseFloat(param1.attribute("value"));
                  };
                  if(!(_loc3_ && this))
                  {
                     §§push(§§newactivation());
                     if(_loc4_)
                     {
                        addr50:
                        §§pop().§§slot[4] = function(param1:XMLList):ColorArgb
                        {
                           var _loc2_:ColorArgb = new ColorArgb();
                           _loc2_.red = parseFloat(param1.attribute("red"));
                           _loc2_.green = parseFloat(param1.attribute("green"));
                           _loc2_.blue = parseFloat(param1.attribute("blue"));
                           _loc2_.alpha = parseFloat(param1.attribute("alpha"));
                           return _loc2_;
                        };
                        addr54:
                        var getBlendFunc:Function = function(param1:XMLList):String
                        {
                           var _loc2_:int = getIntValue(param1);
                           switch(_loc2_)
                           {
                              case 0:
                                 return Context3DBlendFactor.ZERO;
                              case 1:
                                 return Context3DBlendFactor.ONE;
                              case 768:
                                 return Context3DBlendFactor.SOURCE_COLOR;
                              case 769:
                                 return Context3DBlendFactor.ONE_MINUS_SOURCE_COLOR;
                              case 770:
                                 return Context3DBlendFactor.SOURCE_ALPHA;
                              case 771:
                                 return Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
                              case 772:
                                 return Context3DBlendFactor.DESTINATION_ALPHA;
                              case 773:
                                 return Context3DBlendFactor.ONE_MINUS_DESTINATION_ALPHA;
                              case 774:
                                 return Context3DBlendFactor.DESTINATION_COLOR;
                              case 775:
                                 return Context3DBlendFactor.ONE_MINUS_DESTINATION_COLOR;
                              default:
                                 throw new ArgumentError("unsupported blending function: " + _loc2_);
                           }
                        };
                        this.§_-SR§ = parseFloat(config.sourcePositionVariance.attribute("x"));
                        this.§_-s2§ = parseFloat(config.sourcePositionVariance.attribute("y"));
                        this.§_-JX§ = parseFloat(config.gravity.attribute("x"));
                        this.§_-p-§ = parseFloat(config.gravity.attribute("y"));
                        this.§_-Vj§ = getIntValue(config.emitterType);
                        this.§_-lJ§ = getIntValue(config.maxParticles);
                        this.§_-gp§ = Math.max(0.01,getFloatValue(config.particleLifeSpan));
                        this.§_-n§ = getFloatValue(config.particleLifespanVariance);
                     }
                     §§goto(addr54);
                  }
                  this.§_-Sv§ = getFloatValue(config.startParticleSize);
                  if(!_loc3_)
                  {
                     this.§_-rG§ = getFloatValue(config.startParticleSizeVariance);
                     if(_loc4_ || _loc3_)
                     {
                        this.§_-ol§ = getFloatValue(config.finishParticleSize);
                        this.§_-Zm§ = getFloatValue(config.FinishParticleSizeVariance);
                        this.§_-Gs§ = deg2rad(getFloatValue(config.angle));
                        if(_loc4_)
                        {
                           addr197:
                           this.§_-X1§ = deg2rad(getFloatValue(config.angleVariance));
                           this.§_-80§ = getFloatValue(config.speed);
                           this.§_-PW§ = getFloatValue(config.speedVariance);
                           if(!_loc3_)
                           {
                              this.§_-VK§ = getFloatValue(config.radialAcceleration);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr244);
                              }
                              §§goto(addr306);
                           }
                           §§goto(addr293);
                        }
                        §§goto(addr273);
                     }
                     §§goto(addr197);
                  }
                  addr244:
                  this.§_-jW§ = getFloatValue(config.tangentialAcceleration);
                  if(_loc4_)
                  {
                     this.§_-Tq§ = getFloatValue(config.maxRadius);
                     this.§_-n2§ = getFloatValue(config.maxRadiusVariance);
                     addr273:
                     this.§_-Ua§ = getFloatValue(config.minRadius);
                     this.§_-HQ§ = deg2rad(getFloatValue(config.rotatePerSecond));
                     addr293:
                     this.§_-rf§ = deg2rad(getFloatValue(config.rotatePerSecondVariance));
                     if(_loc4_)
                     {
                        addr306:
                        this.§_-ic§ = getColor(config.startColor);
                        this.§_-zn§ = getColor(config.startColorVariance);
                        if(!(_loc3_ && param1))
                        {
                           this.§_-ak§ = getColor(config.finishColor);
                        }
                        this.§_-XS§ = getColor(config.finishColorVariance);
                        if(!_loc3_)
                        {
                           §_-pM§ = getBlendFunc(config.blendFuncSource);
                           §_-Wx§ = getBlendFunc(config.blendFuncDestination);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr50);
      }
   }
}

import §_-NT§.§_-Eo§;

class PDParticle extends §_-Eo§
{
    
   
   public var colorArgb:ColorArgb;
   
   public var colorArgbDelta:ColorArgb;
   
   public var startX:Number;
   
   public var startY:Number;
   
   public var velocityX:Number;
   
   public var velocityY:Number;
   
   public var radialAcceleration:Number;
   
   public var tangentialAcceleration:Number;
   
   public var radius:Number;
   
   public var radiusDelta:Number;
   
   public var rotationDelta:Number;
   
   public var scaleDelta:Number;
   
   public var skipUpdate:Boolean;
   
   function PDParticle()
   {
      super();
      this.colorArgb = new ColorArgb();
      this.colorArgbDelta = new ColorArgb();
   }
}

class ColorArgb
{
    
   
   public var alpha:Number;
   
   public var red:Number;
   
   public var green:Number;
   
   public var blue:Number;
   
   function ColorArgb()
   {
      super();
   }
   
   public function toRgb() : uint
   {
      return int(this.red * 255) << 16 | int(this.green * 255) << 8 | int(this.blue * 255);
   }
}
