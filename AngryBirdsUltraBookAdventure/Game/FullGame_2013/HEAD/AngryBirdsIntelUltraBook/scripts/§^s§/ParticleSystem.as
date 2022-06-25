package §^s§
{
   import §#!,§.DisplayObject;
   import §'7§.VertexData;
   import §+8§.§<!a§;
   import §6!J§.Texture;
   import §7!>§.QuadBatch;
   import §7!>§.RenderSupport;
   import §7!>§.Starling;
   import §^n§.§"!>§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class ParticleSystem extends DisplayObject implements §"!>§
   {
       
      
      private var §>!S§:Texture;
      
      private var §0d§:Vector.<§#-§>;
      
      private var §]!L§:Number;
      
      private var §7+§:Vector.<Number>;
      
      private var §9!i§:Vector.<Number>;
      
      private var §7!$§:VertexData;
      
      private var §0![§:VertexBuffer3D;
      
      private var §^!K§:VertexBuffer3D;
      
      private var §&-§:VertexBuffer3D;
      
      private var §9!2§:Vector.<uint>;
      
      private var §'d§:IndexBuffer3D;
      
      private var §?!A§:int;
      
      private var §7A§:int;
      
      private var §&u§:Number;
      
      protected var §4!F§:Number;
      
      private var §6q§:Number = 0.0;
      
      private var §6!7§:Number;
      
      protected var §&!!§:Number;
      
      protected var §1!0§:Number;
      
      protected var §@!Y§:Boolean;
      
      protected var §-!9§:String;
      
      protected var §-w§:String;
      
      protected var §-x§:String;
      
      private var §=!N§:int = -1;
      
      private var §]C§:Boolean = false;
      
      private var §0E§:Number = 0.0;
      
      public function ParticleSystem(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            if(_loc8_ || param2)
            {
               if(param1 == null)
               {
                  if(!(_loc7_ && param3))
                  {
                     throw new ArgumentError("texture must not be null");
                  }
                  addr322:
                  loop5:
                  while(true)
                  {
                     §§push(this);
                     if(!_loc7_)
                     {
                        §§push(param4);
                        if(!_loc7_)
                        {
                           §§push(§§pop());
                           if(_loc8_ || param1)
                           {
                              if(!§§pop())
                              {
                                 if(_loc8_ || param1)
                                 {
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       if(this.§@!Y§)
                                       {
                                          addr269:
                                          §§push(Context3DBlendFactor.ONE);
                                          if(!(_loc7_ && param2))
                                          {
                                             addr280:
                                          }
                                       }
                                       else
                                       {
                                          §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                       }
                                    }
                                    §§goto(addr269);
                                 }
                              }
                           }
                           §§pop().§-!9§ = §§pop();
                           loop6:
                           for(; param3 > 0; while(true)
                           {
                              if(!(_loc7_ && param2))
                              {
                                 if(_loc8_)
                                 {
                                    addr237:
                                    break loop6;
                                 }
                                 continue loop5;
                              }
                              continue loop6;
                           })
                           {
                              if(_loc7_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 this.§=!6§(param3);
                                 continue loop6;
                              }
                           }
                           addr214:
                           return;
                           addr296:
                        }
                        §§goto(addr280);
                     }
                     §§goto(addr269);
                  }
                  addr322:
               }
               else
               {
                  while(true)
                  {
                     this.§>!S§ = param1;
                     loop1:
                     while(true)
                     {
                        this.§@!Y§ = param1.premultipliedAlpha;
                        loop2:
                        while(true)
                        {
                           this.§0d§ = new Vector.<§#-§>(0,false);
                           if(_loc8_ || param1)
                           {
                              this.§7+§ = new Vector.<Number>();
                              if(!_loc7_)
                              {
                                 this.§9!i§ = new Vector.<Number>();
                                 loop3:
                                 while(true)
                                 {
                                    this.§7!$§ = new VertexData(0,this.§@!Y§);
                                    loop4:
                                    for(; !(_loc7_ && param2); if(!(_loc7_ && param2))
                                    {
                                       continue loop3;
                                    })
                                    {
                                       this.§9!2§ = new Vector.<uint>(0);
                                       if(_loc8_ || param3)
                                       {
                                          while(true)
                                          {
                                             this.§&u§ = param2;
                                             if(_loc8_ || param1)
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr237);
                                          }
                                          addr92:
                                       }
                                       else
                                       {
                                          §§push(this);
                                          if(_loc8_ || param3)
                                          {
                                             §§push(param5);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop());
                                                if(_loc8_)
                                                {
                                                   addr311:
                                                   if(!§§pop())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§pop();
                                                         addr317:
                                                         §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                                      }
                                                   }
                                                }
                                                §§pop().§-w§ = §§pop();
                                                §§goto(addr322);
                                             }
                                             §§goto(addr311);
                                          }
                                          §§goto(addr317);
                                          addr213:
                                       }
                                       §§goto(addr214);
                                    }
                                    continue loop1;
                                    if(!(_loc8_ || param2))
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       this.§6!7§ = 0;
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       this.§]!L§ = 0;
                                       if(_loc7_)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr322);
                                 }
                              }
                              §§goto(addr296);
                           }
                           break;
                        }
                     }
                  }
               }
            }
            §§goto(addr224);
         }
         §§goto(addr92);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Boolean(this.§0![§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§0![§.dispose();
                     addr142:
                     while(true)
                     {
                     }
                  }
                  addr138:
               }
               while(true)
               {
                  §§push(Boolean(this.§^!K§));
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.§^!K§.dispose();
                           addr131:
                           while(!_loc1_)
                           {
                           }
                           §§goto(addr142);
                        }
                        addr127:
                     }
                     while(true)
                     {
                        §§push(Boolean(this.§&-§));
                        loop7:
                        for(; !(_loc2_ && this); while(true)
                        {
                           §§push(Boolean(this.§'d§));
                           if(!(_loc1_ || this))
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(_loc1_ || this)
                              {
                                 this.§'d§.dispose();
                              }
                              loop11:
                              while(_loc1_ || _loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          while(true)
                                          {
                                             this.§7+§ = null;
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.§9!i§ = null;
                                                   for(; _loc1_; super.dispose(),if(!_loc2_)
                                                   {
                                                      return;
                                                   })
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr127);
                                                   }
                                                   continue;
                                                }
                                                continue loop11;
                                             }
                                          }
                                          addr39:
                                       }
                                       else
                                       {
                                          §§goto(addr138);
                                       }
                                       §§goto(addr142);
                                    }
                                    §§goto(addr131);
                                 }
                                 else
                                 {
                                    §§goto(addr117);
                                 }
                              }
                              continue;
                           }
                           §§goto(addr39);
                        })
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           if(!§§pop())
                           {
                              continue;
                           }
                           while(true)
                           {
                              this.§&-§.dispose();
                              addr121:
                              while(true)
                              {
                                 continue loop7;
                              }
                           }
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      protected function createParticle() : §#-§
      {
         return new §#-§();
      }
      
      protected function initParticle(param1:§#-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            param1.x = this.§&!!§;
            loop0:
            while(true)
            {
               param1.y = this.§1!0§;
               while(true)
               {
                  param1.§,b§ = 0;
                  loop2:
                  while(true)
                  {
                     param1.§%!2§ = 1;
                     while(!_loc2_)
                     {
                        param1.red = Math.random();
                        loop4:
                        while(true)
                        {
                           param1.green = Math.random();
                           addr99:
                           while(true)
                           {
                              param1.blue = Math.random();
                              continue loop4;
                           }
                        }
                        if(!(_loc2_ && this))
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr44);
               }
            }
         }
         §§goto(addr82);
      }
      
      protected function advanceParticle(param1:§#-§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            §§push(param1.y);
            if(!(_loc3_ && this))
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
         }
         while(true)
         {
            §§push(param1);
            §§push(1);
            §§push(param1.§,b§);
            if(!_loc3_)
            {
               §§push(§§pop() / param1.§%!2§);
            }
            §§pop().alpha = §§pop() - §§pop();
            while(!_loc3_)
            {
               param1.scaleX = 1 - param1.alpha;
               while(_loc4_)
               {
                  param1.scaleY = 1 - param1.alpha;
                  while(_loc4_ || param1)
                  {
                     §§push(param1);
                     §§push(param1.§,b§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() + param2);
                     }
                     §§pop().§,b§ = §§pop();
                     if(_loc4_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      private function §=!6§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(this.§#`§);
         if(_loc8_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§#`§);
         if(_loc8_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:VertexData = new VertexData(4);
         if(_loc8_ || _loc3_)
         {
            _loc4_.setTexCoords(0,0,0);
            while(true)
            {
               _loc4_.setTexCoords(1,1,0);
               loop1:
               while(_loc8_ || _loc2_)
               {
                  while(true)
                  {
                     _loc4_.setTexCoords(2,0,1);
                     loop3:
                     while(true)
                     {
                        _loc4_.setTexCoords(3,1,1);
                        loop4:
                        while(true)
                        {
                           this.§>!S§.adjustVertexData(_loc4_,0,4);
                           while(_loc8_)
                           {
                              if(!_loc9_)
                              {
                                 while(true)
                                 {
                                    this.§0d§.fixed = false;
                                    continue loop4;
                                 }
                                 continue;
                                 if(!(_loc8_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    §§goto(addr73);
                                 }
                                 else
                                 {
                                    §§push(_loc2_);
                                    if(_loc8_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    addr200:
                                    §§push(_loc5_);
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       if(_loc8_ || _loc3_)
                                       {
                                          if(_loc8_)
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc9_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc8_ || this)
                                                               {
                                                                  this.§0d§.fixed = true;
                                                                  addr246:
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     this.§9!2§.fixed = true;
                                                                     addr192:
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        this.§]C§ = true;
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    if(_loc9_ && param1)
                                                                                    {
                                                                                       addr361:
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr294:
                                                                                          if(_loc7_ >= 3)
                                                                                          {
                                                                                             addr298:
                                                                                             this.§7!$§.append(_loc4_);
                                                                                             this.§9!2§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                                                             addr303:
                                                                                             §§push(_loc5_);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr259:
                                                                                                §§push(§§pop() + 1);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr262:
                                                                                                   §§push(int(§§pop()));
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         addr267:
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr200);
                                                                                                            }
                                                                                                            this.§0d§.push(this.createParticle());
                                                                                                            addr360:
                                                                                                            _loc7_ = int(0);
                                                                                                            §§goto(addr361);
                                                                                                            addr379:
                                                                                                            addr371:
                                                                                                         }
                                                                                                         §§goto(addr303);
                                                                                                      }
                                                                                                      addr378:
                                                                                                      _loc6_ = §§pop();
                                                                                                      §§goto(addr379);
                                                                                                   }
                                                                                                   addr322:
                                                                                                   _loc7_ = §§pop();
                                                                                                   addr323:
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr294);
                                                                                                   }
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc8_ || _loc2_)
                                                                                                   {
                                                                                                      addr314:
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         §§goto(addr322);
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr378);
                                                                                                      §§push(int(§§pop() * 4));
                                                                                                   }
                                                                                                   §§goto(addr360);
                                                                                                   addr337:
                                                                                                }
                                                                                                §§goto(addr314);
                                                                                             }
                                                                                             §§goto(addr259);
                                                                                             addr293:
                                                                                          }
                                                                                          this.§7+§.push(0);
                                                                                          this.§9!i§.push(0);
                                                                                          §§goto(addr337);
                                                                                          addr356:
                                                                                       }
                                                                                       §§goto(addr371);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              §§goto(addr293);
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                        §§goto(addr192);
                                                                     }
                                                                     §§goto(addr356);
                                                                  }
                                                                  §§goto(addr323);
                                                               }
                                                               §§goto(addr267);
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr314);
                                                         §§push(_loc5_);
                                                      }
                                                      §§goto(addr314);
                                                   }
                                                   §§goto(addr294);
                                                }
                                                §§goto(addr360);
                                             }
                                             §§goto(addr322);
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr262);
                                 }
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      private function §1!_§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§]C§);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  addr31:
                  if(§§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        §§push(false);
                     }
                     else
                     {
                        addr43:
                        if(param1 == null)
                        {
                           if(_loc4_)
                           {
                              throw new §<!a§();
                           }
                        }
                        §§push(this.§7!$§.§ !Z§);
                        if(!(_loc3_ && this))
                        {
                           §§push(int(§§pop() / 4));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc4_)
                        {
                           §§push(Boolean(this.§0![§));
                           loop0:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    this.§0![§.dispose();
                                 }
                                 while(true)
                                 {
                                    loop12:
                                    while(!(_loc3_ && _loc2_))
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          this.§0![§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§4d§);
                                          while(true)
                                          {
                                             this.§0![§.uploadFromByteArray(this.§7!$§.§%!T§,0,0,_loc2_ * 4);
                                             loop15:
                                             for(; _loc4_; while(true)
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      this.§&-§.uploadFromVector(this.§7!$§.§&c§,0,_loc2_ * 4);
                                                      §§goto(addr125);
                                                   }
                                                   break;
                                                }
                                                continue loop15;
                                             },§§goto(addr268))
                                             {
                                                if(!_loc3_)
                                                {
                                                   this.§^!K§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§@!e§);
                                                   while(true)
                                                   {
                                                      this.§^!K§.uploadFromVector(this.§7!$§.§]y§,0,_loc2_ * 4);
                                                      addr176:
                                                      while(_loc4_)
                                                      {
                                                         this.§&-§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§!<§);
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§^!K§.dispose();
                                                      while(true)
                                                      {
                                                         addr242:
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(this.§&-§));
                                                            loop7:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(_loc4_ || this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§&-§.dispose();
                                                                        addr268:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                                  addr247:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(this.§'d§));
                                                                  loop10:
                                                                  while(_loc4_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§'d§.dispose();
                                                                        continue loop12;
                                                                        addr105:
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           this.§'d§.uploadFromVector(this.§9!2§,0,_loc2_ * 6);
                                                                           addr112:
                                                                           if(_loc3_)
                                                                           {
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr105);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr176);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       this.§'d§ = param1.createIndexBuffer(_loc2_ * 6);
                                                                                       continue loop20;
                                                                                    }
                                                                                    §§goto(addr247);
                                                                                    addr125:
                                                                                 }
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(true);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr281:
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(Boolean(this.§^!K§));
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr254);
                     }
                  }
                  §§goto(addr43);
               }
               return §§pop();
            }
            §§goto(addr31);
         }
         §§goto(addr43);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§&u§ != 0)
            {
               if(_loc2_)
               {
                  addr24:
                  this.§6!7§ = param1;
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6!7§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §@!7§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(!(_loc6_ && param2))
         {
            if(param2 != null)
            {
               while(true)
               {
                  param2.x = _loc4_.x;
                  while(!_loc6_)
                  {
                     param2.y = _loc4_.y;
                     do
                     {
                        param2.width = 0;
                        do
                        {
                           param2.height = 0;
                        }
                        while(!_loc5_);
                        
                     }
                     while(_loc6_);
                     
                     if(_loc6_)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        return param2;
                     }
                  }
               }
            }
         }
         return new Rectangle(_loc4_.x,_loc4_.y);
      }
      
      public function §1!5§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§5w§(null);
         }
         while(!_loc3_);
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§0E§ = param1;
         }
      }
      
      private function §5w§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §2F§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§#-§ = null;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ < this.§?!A§)
         {
            _loc3_ = this.§0d§[_loc2_];
            if(_loc5_ || this)
            {
               this.§7+§[_loc2_ * 3] = _loc3_.x;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§7+§[_loc2_ * 3 + 1] = _loc3_.y;
                     do
                     {
                        §§push(_loc2_);
                        if(_loc5_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc4_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc2_ = §§pop();
                     }
                     while(_loc4_);
                     
                     if(_loc4_)
                     {
                        break;
                        addr64:
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr64);
         }
         if(!(_loc4_ && param1))
         {
            param1.transformVectors(this.§7+§,this.§9!i§);
         }
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            this.§5w§(param1.§<!=§);
            loop0:
            while(true)
            {
               while(this.§7A§ != 0)
               {
                  loop2:
                  while(true)
                  {
                     §§push(param2);
                     if(_loc7_)
                     {
                        §§push(§§pop() * this.alpha);
                        if(!_loc6_)
                        {
                           addr34:
                           §§push(Number(§§pop()));
                        }
                        param2 = §§pop();
                        if(_loc7_ || this)
                        {
                           break;
                        }
                        addr55:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     §§goto(addr34);
                  }
                  if(!_loc7_)
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     continue loop0;
                  }
                  if(false)
                  {
                     continue;
                  }
                  §§push(QuadBatch);
                  §§push(param2 == 1);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(!§§pop());
                  }
                  §§push(§§pop().§9%§(§§pop(),this.§>!S§.mipMapping,false,this.§-x§,true));
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  var _loc3_:* = §§pop();
                  var _loc4_:Context3D = param1.§0v§;
                  if(_loc7_ || param2)
                  {
                     if(_loc4_ == null)
                     {
                        if(!_loc6_)
                        {
                           return;
                        }
                     }
                  }
                  var _loc5_:Vector.<Number> = !!this.§@!Y§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                  if(!(_loc6_ && param1))
                  {
                     if(param1.§=V§ != this.§=!N§)
                     {
                        if(_loc7_)
                        {
                           this.§=!6§(0);
                        }
                        loop3:
                        while(true)
                        {
                           this.§=!N§ = param1.§=V§;
                           addr431:
                           while(true)
                           {
                              loop8:
                              for(; !(_loc6_ && _loc3_); while(!(_loc6_ && param1))
                              {
                                 _loc4_.setVertexBufferAt(0,null);
                                 §§goto(addr222);
                                 §§goto(addr185);
                              })
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    _loc4_.setBlendFactors(this.§-!9§,this.§-w§);
                                    loop10:
                                    while(true)
                                    {
                                       _loc4_.setProgram(Starling.§7!+§.§#+§(_loc3_));
                                       addr362:
                                       loop11:
                                       while(true)
                                       {
                                          _loc4_.setTextureAt(0,this.§>!S§.getBase(_loc4_));
                                          loop12:
                                          while(true)
                                          {
                                             _loc4_.setVertexBufferAt(0,this.§&-§,VertexData.§@8§,Context3DVertexBufferFormat.FLOAT_3);
                                             loop13:
                                             while(true)
                                             {
                                                if(!(_loc7_ || _loc3_))
                                                {
                                                   continue loop12;
                                                }
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                _loc4_.setVertexBufferAt(1,this.§0![§,VertexData.§+!h§,Context3DVertexBufferFormat.FLOAT_2);
                                                loop14:
                                                for(; !(_loc6_ && this); while(_loc7_ || param1)
                                                {
                                                   _loc4_.drawTriangles(this.§'d§,0,this.§7A§ * 2);
                                                   continue loop8;
                                                })
                                                {
                                                   _loc4_.setVertexBufferAt(2,this.§^!K§,VertexData.§8!Y§,Context3DVertexBufferFormat.FLOAT_4);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§<!=§,true);
                                                      while(!_loc6_)
                                                      {
                                                         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                                         continue loop14;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§&-§.uploadFromVector(this.§7!$§.§&c§,0,this.§7A§ * 4);
                                                         continue loop8;
                                                      }
                                                      addr224:
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         _loc4_.setVertexBufferAt(1,null);
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                               continue loop15;
                                                               addr222:
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            §§goto(addr280);
                                                            addr215:
                                                            _loc4_.setVertexBufferAt(2,null);
                                                            if(_loc7_)
                                                            {
                                                               addr185:
                                                               if(_loc7_ || this)
                                                               {
                                                                  return;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§^!K§.uploadFromVector(this.§7!$§.§]y§,0,this.§7A§ * 4);
                                                   §§goto(addr425);
                                                   §§goto(addr312);
                                                }
                                                addr312:
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(this.§1!_§(_loc4_));
                        if(!_loc6_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           §§goto(addr403);
                        }
                        §§goto(addr363);
                        §§goto(addr431);
                     }
                  }
                  §§goto(addr362);
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      public function get §8!V§() : Boolean
      {
         return false;
      }
      
      public function get §#`§() : int
      {
         return this.§7!$§.§ !Z§ / 4;
      }
      
      public function get §-<§() : int
      {
         return this.§?!A§;
      }
      
      public function get §&!i§() : Number
      {
         return this.§&u§;
      }
      
      public function set §&!i§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§&u§ = param1;
         }
      }
      
      public function get §"t§() : Number
      {
         return this.§&!!§;
      }
      
      public function set §"t§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!!§ = param1;
         }
      }
      
      public function get §5!7§() : Number
      {
         return this.§1!0§;
      }
      
      public function set §5!7§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§1!0§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§>!S§;
      }
   }
}
