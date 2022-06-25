package §7!>§
{
   import §#!,§.§0!b§;
   import §#!,§.§6!Y§;
   import §#!,§.DisplayObject;
   import §#!,§.DisplayObjectContainer;
   import §'7§.VertexData;
   import §+8§.§<!a§;
   import §6!J§.§&!A§;
   import §6!J§.Texture;
   import §<O§.AGALMiniAssembler;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class QuadBatch
   {
      
      private static var §`!e§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!e§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §>!W§:int;
      
      private var §^![§:Texture;
      
      private var §=!=§:String;
      
      private var §7!$§:VertexData;
      
      private var §0![§:VertexBuffer3D;
      
      private var §^!K§:VertexBuffer3D;
      
      private var §&-§:VertexBuffer3D;
      
      private var §'Y§:Vector.<uint>;
      
      private var §'d§:IndexBuffer3D;
      
      private var §2!0§:Boolean = false;
      
      private var §]C§:Boolean = false;
      
      public function QuadBatch()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               §5&§();
               loop1:
               for(; _loc2_; loop3:
               while(!(_loc1_ && _loc2_))
               {
                  this.§>!W§ = 0;
                  while(true)
                  {
                     this.§3T§();
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        continue loop3;
                     }
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr90);
                  }
                  return;
               })
               {
                  this.§7!$§ = new VertexData(0,true);
                  while(true)
                  {
                     this.§'Y§ = new Vector.<uint>(0);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public static function §,!$§(param1:DisplayObjectContainer, param2:Vector.<QuadBatch>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §0l§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §0l§(param1:DisplayObject, param2:Vector.<QuadBatch>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§6!Y§ = null;
         var _loc13_:§0!b§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:QuadBatch = null;
         §§push(false);
         if(!_loc18_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc17_)
         {
            §§push(param3);
            loop0:
            while(§§pop() != -1)
            {
               §§push(param1.alpha == 0);
               if(_loc17_)
               {
                  §§push(Boolean(§§pop()));
               }
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc17_ || param2)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     for(; !_loc18_; if(!(_loc17_ || param2))
                     {
                        continue;
                     },if(_loc18_)
                     {
                        continue loop1;
                     },§§push(!§§pop()),if(_loc17_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc18_ && param2))
                        {
                           break loop1;
                        }
                        §§goto(addr190);
                     },§§goto(addr78))
                     {
                        §§pop();
                        if(_loc17_ || param1)
                        {
                           if(!_loc17_)
                           {
                              break loop0;
                           }
                           §§push(param1.visible);
                           if(!_loc18_)
                           {
                              continue;
                           }
                           addr78:
                           addr78:
                           if(§§pop())
                           {
                              if(!_loc18_)
                              {
                                 if(!(_loc18_ && param3))
                                 {
                                    §§push(param3);
                                    if(!_loc18_)
                                    {
                                       if(!(_loc18_ && QuadBatch))
                                       {
                                          if(!_loc18_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       addr178:
                                    }
                                    while(true)
                                    {
                                       param3 = §§pop();
                                       if(param2.length == 0)
                                       {
                                          if(!(_loc18_ && param2))
                                          {
                                             param2.push(new QuadBatch());
                                          }
                                       }
                                       else
                                       {
                                          param2[0].reset();
                                          if(!_loc18_)
                                          {
                                             addr190:
                                             if(param1 is DisplayObjectContainer)
                                             {
                                                addr195:
                                                _loc8_ = param1 as DisplayObjectContainer;
                                                if(!(_loc18_ && param2))
                                                {
                                                   §§push(_loc8_.numChildren);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   _loc9_ = §§pop();
                                                }
                                                _loc10_ = new Matrix3D();
                                                if(_loc17_)
                                                {
                                                   §§push(param5);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop() * param1.alpha);
                                                      if(_loc17_ || param3)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   param5 = §§pop();
                                                   if(_loc17_)
                                                   {
                                                      §§push(0);
                                                      if(_loc17_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                      _loc6_ = §§pop();
                                                   }
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc17_ || QuadBatch)
                                                   {
                                                      §§push(_loc9_);
                                                      if(!_loc18_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               addr498:
                                                               §§push(_loc7_);
                                                               if(_loc17_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc17_ || param3)
                                                                     {
                                                                        §§push(int(param2.length - 1));
                                                                        if(_loc17_ || param1)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(_loc17_)
                                                                           {
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(!(_loc18_ && QuadBatch))
                                                                                 {
                                                                                    addr581:
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          addr539:
                                                                                          if(§§pop() <= param3)
                                                                                          {
                                                                                             if(_loc18_ && param3)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc17_ || QuadBatch)
                                                                                             {
                                                                                                if(!(_loc18_ && param2))
                                                                                                {
                                                                                                   §§goto(addr572);
                                                                                                }
                                                                                                addr596:
                                                                                                addr587:
                                                                                                §§push(delete param2[_loc6_]);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                }
                                                                                                addr596:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                break loop4;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             param2[_loc6_].dispose();
                                                                                          }
                                                                                          §§goto(addr596);
                                                                                       }
                                                                                       break loop4;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       continue loop16;
                                                                                    }
                                                                                    addr581:
                                                                                 }
                                                                                 §§goto(addr572);
                                                                              }
                                                                              addr524:
                                                                           }
                                                                           §§goto(addr582);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr581);
                                                                        }
                                                                        addr580:
                                                                     }
                                                                     §§goto(addr524);
                                                                  }
                                                                  addr572:
                                                                  return param3;
                                                               }
                                                               §§goto(addr587);
                                                            }
                                                            §§goto(addr582);
                                                         }
                                                         else
                                                         {
                                                            _loc11_ = _loc8_.getChildAt(_loc6_);
                                                            if(_loc17_)
                                                            {
                                                               _loc10_.copyFrom(param4);
                                                               while(true)
                                                               {
                                                                  _loc11_.§#!9§(_loc10_);
                                                                  loop6:
                                                                  for(; _loc17_ || param2; while(true)
                                                                  {
                                                                     if(_loc18_ && param1)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push(_loc6_);
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§goto(addr264);
                                                                        }
                                                                     }
                                                                     §§goto(addr272);
                                                                  },§§goto(addr302))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§push(§0l§(_loc11_,param2,param3,_loc10_,param5));
                                                                           addr302:
                                                                           while(true)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              addr303:
                                                                              addr264:
                                                                              while(true)
                                                                              {
                                                                                 param3 = §§pop();
                                                                                 continue loop6;
                                                                              }
                                                                              if(_loc18_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(int(§§pop()));
                                                                              if(!(_loc18_ && QuadBatch))
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              §§goto(addr303);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                      }
                                                      §§goto(addr539);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(!_loc18_)
                                                   {
                                                      §§goto(addr580);
                                                   }
                                                   §§goto(addr581);
                                                }
                                             }
                                             else
                                             {
                                                if(!(param1 is §6!Y§))
                                                {
                                                   throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                                                }
                                                if(!(_loc18_ && param2))
                                                {
                                                   _loc12_ = param1 as §6!Y§;
                                                   _loc13_ = _loc12_ as §0!b§;
                                                   if(!_loc18_)
                                                   {
                                                      _loc14_ = Boolean(_loc13_) ? _loc13_.texture : null;
                                                      if(!_loc18_)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            if(_loc17_ || param1)
                                                            {
                                                               addr394:
                                                               §§push(_loc13_.smoothing);
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc18_)
                                                                  {
                                                                  }
                                                               }
                                                               addr407:
                                                               _loc15_ = §§pop();
                                                               addr406:
                                                            }
                                                            _loc16_ = param2[param3];
                                                            if(!_loc18_)
                                                            {
                                                               if(_loc16_.§>!>§(_loc12_,_loc14_,_loc15_))
                                                               {
                                                                  if(!(_loc18_ && param2))
                                                                  {
                                                                     addr428:
                                                                     §§push(param3);
                                                                     if(!(_loc18_ && QuadBatch))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(!(_loc18_ && param3))
                                                                        {
                                                                           addr444:
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        param3 = §§pop();
                                                                        if(_loc17_)
                                                                        {
                                                                           if(param2.length <= param3)
                                                                           {
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 param2.push(new QuadBatch());
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    addr466:
                                                                                    _loc16_ = param2[param3];
                                                                                    if(!(_loc18_ && param3))
                                                                                    {
                                                                                       _loc16_.reset();
                                                                                       addr481:
                                                                                       _loc16_.§8Q§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                                                    }
                                                                                    §§goto(addr481);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr466);
                                                                        }
                                                                        §§goto(addr498);
                                                                     }
                                                                     §§goto(addr444);
                                                                  }
                                                                  §§goto(addr466);
                                                               }
                                                               §§goto(addr481);
                                                            }
                                                            §§goto(addr428);
                                                         }
                                                         else
                                                         {
                                                            §§push(null);
                                                            if(_loc17_)
                                                            {
                                                               §§goto(addr406);
                                                            }
                                                         }
                                                         §§goto(addr407);
                                                      }
                                                      §§goto(addr394);
                                                   }
                                                   §§goto(addr374);
                                                }
                                             }
                                             §§goto(addr498);
                                             addr107:
                                             addr150:
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr195);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc18_ && param1)
                                    {
                                       while(true)
                                       {
                                          §§goto(addr178);
                                       }
                                       addr189:
                                    }
                                    §§goto(addr107);
                                 }
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr195);
                     }
                     addr188:
                     _loc7_ = §§pop();
                     §§goto(addr189);
                  }
                  break;
               }
               §§goto(addr78);
            }
            §§push(true);
            if(_loc17_)
            {
               §§push(Boolean(§§pop()));
            }
            §§goto(addr188);
         }
         §§goto(addr150);
      }
      
      private static function §5&§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         var _loc8_:Array = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc1_:Starling = Starling.§7!+§;
         if(!_loc23_)
         {
            if(_loc1_.§ !L§(§"h§(true)))
            {
               if(!(_loc23_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc13_:int = 0;
         var _loc14_:* = [true,false];
         loop0:
         while(§§hasnext(_loc14_,_loc13_))
         {
            §§push(Boolean(§§nextvalue(_loc13_,_loc14_)));
            loop1:
            while(true)
            {
               _loc6_ = §§pop();
               addr197:
               while(true)
               {
                  §§push("m44 op, va0, vc0  \n");
                  addr185:
                  while(true)
                  {
                     §§push("mov v0, va2       \n");
                     addr186:
                     addr145:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        addr187:
                        while(true)
                        {
                           §§push(§§pop());
                           addr188:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                     if(!(_loc24_ || QuadBatch))
                     {
                        continue;
                     }
                     §§push("mov oc, ft0       \n");
                     if(_loc24_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc23_ && _loc1_))
                        {
                           if(!_loc23_)
                           {
                              §§push(§§pop());
                              if(_loc24_)
                              {
                                 addr180:
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§goto(addr187);
                           }
                        }
                        else
                        {
                           addr170:
                           §§push(§§pop());
                           if(!(_loc23_ && _loc1_))
                           {
                              if(!_loc23_)
                              {
                                 §§goto(addr180);
                              }
                              else
                              {
                                 §§goto(addr188);
                              }
                           }
                        }
                        _loc5_ = §§pop();
                        loop8:
                        while(true)
                        {
                           _loc2_.§9o§(Context3DProgramType.VERTEX,_loc4_);
                           while(!_loc23_)
                           {
                              while(true)
                              {
                                 _loc3_.§9o§(Context3DProgramType.FRAGMENT,_loc5_);
                                 if(!(_loc24_ || _loc1_))
                                 {
                                    continue loop0;
                                 }
                                 if(_loc23_)
                                 {
                                    break;
                                 }
                                 _loc1_.§&Q§(§"h§(_loc6_),_loc2_.§=!D§,_loc3_.§=!D§);
                                 if(_loc23_)
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc24_)
                                 {
                                    continue loop8;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 var _loc15_:int = 0;
                                 if(!_loc23_)
                                 {
                                    var _loc16_:* = [true,false];
                                    if(!_loc23_)
                                    {
                                       addr722:
                                       if(§§hasnext(_loc16_,_loc15_))
                                       {
                                          addr457:
                                          _loc7_ = §§nextvalue(_loc15_,_loc16_);
                                          addr458:
                                          if(_loc7_)
                                          {
                                             if(!_loc23_)
                                             {
                                                addr424:
                                                §§push("m44 op, va0, vc0  \n");
                                                §§push("mov v0, va1 \n");
                                                if(!(_loc23_ && _loc1_))
                                                {
                                                   addr449:
                                                   _loc4_ = §§pop() + §§pop() + "mov v1, va2       \n";
                                                   addr436:
                                                   addr435:
                                                   addr434:
                                                   addr448:
                                                   addr450:
                                                   addr433:
                                                   if(_loc7_)
                                                   {
                                                      addr337:
                                                      §§push(_loc6_);
                                                      if(!_loc23_)
                                                      {
                                                         if(!_loc23_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc23_ && _loc1_))
                                                               {
                                                                  §§push("tex ft1, v0, fs0 <???>  \n");
                                                                  if(!_loc23_)
                                                                  {
                                                                     if(_loc24_)
                                                                     {
                                                                        addr366:
                                                                        §§push(§§pop() + "mul ft1, ft1, v1        \n");
                                                                        if(_loc24_)
                                                                        {
                                                                           §§push("mul oc, ft1, fc0        \n");
                                                                           if(_loc24_ || QuadBatch)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc24_ || QuadBatch)
                                                                              {
                                                                                 addr385:
                                                                                 if(!(_loc23_ && QuadBatch))
                                                                                 {
                                                                                    addr416:
                                                                                    _loc5_ = §§pop();
                                                                                    addr210:
                                                                                    _loc2_.§9o§(Context3DProgramType.VERTEX,_loc4_);
                                                                                    addr233:
                                                                                    addr417:
                                                                                    addr393:
                                                                                    addr415:
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       if(_loc24_ || _loc1_)
                                                                                       {
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr233);
                                                                                                }
                                                                                                addr462:
                                                                                                _loc8_ = [§&!A§.NONE,§&!A§.§^Z§,§&!A§.§?k§];
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   var _loc17_:int = 0;
                                                                                                   if(!(_loc23_ && _loc1_))
                                                                                                   {
                                                                                                      var _loc18_:* = [true,false];
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr718:
                                                                                                      for each(_loc9_ in _loc18_)
                                                                                                      {
                                                                                                         if(_loc24_ || QuadBatch)
                                                                                                         {
                                                                                                            var _loc19_:int = 0;
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               var _loc20_:* = [true,false];
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr714:
                                                                                                               for each(_loc10_ in _loc20_)
                                                                                                               {
                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                  {
                                                                                                                     var _loc21_:int = 0;
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        var _loc22_:* = _loc8_;
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           addr710:
                                                                                                                           for each(_loc11_ in _loc22_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr713:
                                                                                                                           §§goto(addr714);
                                                                                                                        }
                                                                                                                        §§push("2d");
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr549:
                                                                                                                              §§push("repeat");
                                                                                                                              if(!(_loc23_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr561:
                                                                                                                                 _loc12_ = null;
                                                                                                                                 if(_loc24_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    addr687:
                                                                                                                                    if(_loc11_ == §&!A§.NONE)
                                                                                                                                    {
                                                                                                                                       addr688:
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       §§push("nearest");
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          addr707:
                                                                                                                                          §§pop().push(§§pop(),"mipnearest");
                                                                                                                                          addr605:
                                                                                                                                          _loc3_.§9o§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                                                                                                                                          addr709:
                                                                                                                                          if(_loc24_ || QuadBatch)
                                                                                                                                          {
                                                                                                                                             if(!(_loc23_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                _loc1_.§&Q§(§9%§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§=!D§,_loc3_.§=!D§);
                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr605);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr710);
                                                                                                                                                      }
                                                                                                                                                      addr664:
                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         §§push("linear");
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            addr680:
                                                                                                                                                            §§pop().push(§§pop(),"mipnearest");
                                                                                                                                                            §§goto(addr605);
                                                                                                                                                            addr682:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr680);
                                                                                                                                                         §§push("mipnone");
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr688);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr682);
                                                                                                                                                }
                                                                                                                                                §§goto(addr605);
                                                                                                                                             }
                                                                                                                                             §§goto(addr709);
                                                                                                                                          }
                                                                                                                                          §§goto(addr605);
                                                                                                                                       }
                                                                                                                                       §§goto(addr707);
                                                                                                                                       §§push("mipnone");
                                                                                                                                    }
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(§&!A§.§^Z§);
                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr664);
                                                                                                                                          }
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          §§push("linear");
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             addr644:
                                                                                                                                             §§pop().push(§§pop(),"miplinear");
                                                                                                                                             §§goto(addr707);
                                                                                                                                          }
                                                                                                                                          §§goto(addr644);
                                                                                                                                          §§push("mipnone");
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr687);
                                                                                                                                 }
                                                                                                                                 §§goto(addr605);
                                                                                                                              }
                                                                                                                              addr560:
                                                                                                                              §§goto(addr561);
                                                                                                                              §§push(§§pop());
                                                                                                                           }
                                                                                                                           §§goto(addr560);
                                                                                                                           §§push("clamp");
                                                                                                                        }
                                                                                                                        §§goto(addr549);
                                                                                                                     }
                                                                                                                     §§goto(addr713);
                                                                                                                  }
                                                                                                                  §§goto(addr714);
                                                                                                               }
                                                                                                               addr717:
                                                                                                               §§goto(addr718);
                                                                                                            }
                                                                                                            §§goto(addr717);
                                                                                                         }
                                                                                                         §§goto(addr718);
                                                                                                      }
                                                                                                      addr721:
                                                                                                      §§goto(addr722);
                                                                                                   }
                                                                                                   §§goto(addr721);
                                                                                                }
                                                                                                §§goto(addr722);
                                                                                             }
                                                                                             §§goto(addr458);
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                       }
                                                                                       addr247:
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          §§push("tex ft1, v0, fs0 <???>  \n");
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             §§push("mul oc, ft1, fc0        \n");
                                                                                             if(_loc24_ || _loc1_)
                                                                                             {
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               if(!(_loc23_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!(_loc23_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr315:
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc24_ || QuadBatch)
                                                                                                                     {
                                                                                                                        addr323:
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           _loc5_ = §§pop();
                                                                                                                           addr326:
                                                                                                                           if(_loc24_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr210);
                                                                                                                           }
                                                                                                                           §§goto(addr417);
                                                                                                                        }
                                                                                                                        §§goto(addr416);
                                                                                                                     }
                                                                                                                     §§goto(addr462);
                                                                                                                  }
                                                                                                                  §§goto(addr449);
                                                                                                               }
                                                                                                               §§goto(addr393);
                                                                                                            }
                                                                                                            §§goto(addr315);
                                                                                                         }
                                                                                                         addr395:
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            §§push("mul ft1, ft1, v1        \n");
                                                                                                            if(_loc24_ || _loc3_)
                                                                                                            {
                                                                                                               addr406:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  addr409:
                                                                                                                  §§push(§§pop() + "mov oc, ft1 \n");
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        §§goto(addr415);
                                                                                                                     }
                                                                                                                     §§goto(addr436);
                                                                                                                  }
                                                                                                                  §§goto(addr416);
                                                                                                               }
                                                                                                               §§goto(addr424);
                                                                                                            }
                                                                                                            §§goto(addr409);
                                                                                                         }
                                                                                                         §§goto(addr435);
                                                                                                      }
                                                                                                      §§goto(addr409);
                                                                                                   }
                                                                                                   addr290:
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         addr295:
                                                                                                         §§push("mov oc, ft1 \n");
                                                                                                         if(!(_loc23_ && QuadBatch))
                                                                                                         {
                                                                                                            if(_loc24_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  addr312:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     §§goto(addr315);
                                                                                                                  }
                                                                                                                  §§goto(addr323);
                                                                                                               }
                                                                                                               §§goto(addr434);
                                                                                                            }
                                                                                                            addr440:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc23_ && _loc1_))
                                                                                                            {
                                                                                                               §§goto(addr448);
                                                                                                            }
                                                                                                            §§goto(addr449);
                                                                                                         }
                                                                                                         §§goto(addr366);
                                                                                                      }
                                                                                                      §§goto(addr440);
                                                                                                   }
                                                                                                   §§goto(addr406);
                                                                                                }
                                                                                                §§goto(addr409);
                                                                                             }
                                                                                             §§goto(addr295);
                                                                                          }
                                                                                          §§goto(addr312);
                                                                                       }
                                                                                       §§goto(addr450);
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                 }
                                                                                 §§goto(addr433);
                                                                              }
                                                                              §§goto(addr395);
                                                                           }
                                                                           §§goto(addr409);
                                                                        }
                                                                        §§goto(addr385);
                                                                     }
                                                                     addr438:
                                                                     §§goto(addr440);
                                                                     §§push("mov v0, va1 \n");
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                               §§goto(addr416);
                                                            }
                                                            §§goto(addr395);
                                                            §§push("tex ft1, v0, fs0 <???>  \n");
                                                         }
                                                      }
                                                      §§goto(addr457);
                                                   }
                                                   §§push(_loc6_);
                                                   if(!(_loc23_ && _loc2_))
                                                   {
                                                      if(_loc24_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr247);
                                                         }
                                                         §§push("tex ft1, v0, fs0 <???>  \n");
                                                         if(_loc24_)
                                                         {
                                                            §§goto(addr290);
                                                         }
                                                         §§goto(addr312);
                                                      }
                                                      §§goto(addr449);
                                                   }
                                                   §§goto(addr337);
                                                }
                                                §§goto(addr440);
                                             }
                                             §§goto(addr449);
                                          }
                                          §§goto(addr438);
                                          §§push("m44 op, va0, vc0  \n");
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr449);
                                 }
                                 §§goto(addr722);
                              }
                           }
                           continue loop1;
                        }
                     }
                     else
                     {
                        §§goto(addr186);
                     }
                     §§goto(addr187);
                  }
               }
            }
         }
      }
      
      public static function §"h§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               §§goto(addr21);
            }
            else
            {
               §§push("QB_q\'");
            }
            §§goto(addr29);
         }
         addr21:
         §§push("QB_q*");
         if(_loc3_)
         {
            §§push(§§pop());
            if(_loc2_)
            {
            }
         }
         else
         {
            addr29:
            return §§pop();
         }
         return §§pop();
      }
      
      public static function §9%§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(param1)
            {
               addr20:
               §§push("QB_i*");
               if(_loc7_ || QuadBatch)
               {
                  §§push(§§pop());
                  if(!_loc8_)
                  {
                     addr41:
                     §§push(§§pop());
                  }
               }
               else
               {
                  addr33:
                  §§push(§§pop());
                  if(!(_loc8_ && param1))
                  {
                     §§goto(addr41);
                  }
               }
               var _loc6_:* = §§pop();
               if(!_loc8_)
               {
                  §§push(param2);
                  loop0:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              addr210:
                              while(true)
                              {
                                 §§push("N");
                                 addr211:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr212:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr213:
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          addr214:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr209:
                        }
                        while(true)
                        {
                           §§push(param3);
                           for(; !_loc8_; loop10:
                           while(true)
                           {
                              §§push(param5);
                              if(_loc8_ && param2)
                              {
                                 break;
                              }
                              continue loop0;
                              addr205:
                              while(true)
                              {
                                 continue loop10;
                              }
                           })
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                           }
                           continue loop1;
                        }
                     }
                     if(!(_loc7_ || param2))
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        if(_loc7_)
                        {
                           if(_loc7_)
                           {
                              §§push(_loc6_);
                              loop11:
                              while(true)
                              {
                                 §§push("C");
                                 if(!(_loc8_ && param2))
                                 {
                                    if(_loc7_ || param3)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && param3))
                                          {
                                             §§push(§§pop());
                                             loop12:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                addr192:
                                                while(true)
                                                {
                                                   addr71:
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(param4);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§push(§&!A§.§^Z§);
                                                         if(!(_loc8_ && QuadBatch))
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(!(_loc8_ && QuadBatch))
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        loop16:
                                                                        while(!(_loc8_ && param1))
                                                                        {
                                                                           §§push(param4);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop().charAt(0));
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr129:
                                                                                    _loc6_ = §§pop();
                                                                                    while(_loc7_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       §§goto(addr129);
                                                                                    }
                                                                                    §§goto(addr214);
                                                                                    addr130:
                                                                                 }
                                                                                 addr204:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    §§goto(addr205);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr213);
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     addr199:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push("R");
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              addr203:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr204);
                                                                              }
                                                                           }
                                                                           addr202:
                                                                        }
                                                                        §§goto(addr210);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr130);
                                                            }
                                                            §§goto(addr46);
                                                         }
                                                         §§goto(addr123);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr203);
                                    }
                                    break;
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr71);
                  }
               }
               §§goto(addr198);
            }
            else
            {
               §§push("QB_i\'");
            }
            §§goto(addr33);
         }
         §§goto(addr20);
      }
      
      public function get §'-§() : int
      {
         return this.§>!W§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
                     addr132:
                     while(true)
                     {
                     }
                  }
                  addr128:
               }
               while(true)
               {
                  §§push(Boolean(this.§^!K§));
                  loop4:
                  while(!_loc1_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.§^!K§.dispose();
                           addr123:
                           while(true)
                           {
                           }
                           addr73:
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              addr25:
                              return;
                              addr82:
                           }
                           §§goto(addr128);
                        }
                     }
                     loop7:
                     while(true)
                     {
                        §§push(Boolean(this.§&-§));
                        loop8:
                        for(; !_loc1_; while(true)
                        {
                           §§push(Boolean(this.§'d§));
                           if(_loc2_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || this)
                                 {
                                    §§goto(addr48);
                                 }
                                 §§goto(addr71);
                              }
                              break;
                           }
                           continue loop8;
                           §§goto(addr111);
                        },§§goto(addr25))
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(!(_loc1_ && _loc1_))
                           {
                              this.§&-§.dispose();
                           }
                           while(true)
                           {
                              continue loop8;
                              addr48:
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              if(!_loc1_)
                              {
                                 this.§'d§.dispose();
                                 addr71:
                                 if(_loc1_)
                                 {
                                    continue loop7;
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr132);
                           }
                        }
                        continue loop4;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr82);
      }
      
      private function §3T§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§7!$§.§ !Z§);
         if(_loc4_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               §§push(0);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() == §§pop())
                  {
                     addr45:
                     §§push(16);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(int(§§pop()));
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!_loc5_)
                     {
                        §§push(2);
                     }
                  }
                  §§goto(addr71);
                  §§goto(addr70);
               }
               §§push(int(§§pop() * §§pop()));
               if(_loc4_)
               {
                  addr70:
                  if(_loc4_ || _loc3_)
                  {
                     this.§7!$§.§ !Z§ = _loc2_ * 4;
                  }
                  §§push(_loc1_);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc4_ || _loc1_)
                     {
                        if(§§pop() >= _loc2_)
                        {
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 this.§]C§ = true;
                                 addr118:
                                 if(_loc4_ || _loc1_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(_loc5_ && _loc1_)
                                          {
                                             continue;
                                          }
                                          this.§'Y§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                       }
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       this.§'Y§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                       addr207:
                                       while(true)
                                       {
                                          this.§'Y§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                          addr183:
                                          addr289:
                                          loop2:
                                          while(!(_loc5_ && _loc2_))
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc5_)
                                                {
                                                   addr158:
                                                   §§push(int(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      continue loop2;
                                                   }
                                                   addr158:
                                                }
                                             }
                                             §§goto(addr158);
                                          }
                                          while(true)
                                          {
                                             this.§'Y§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                             §§goto(addr275);
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                                 while(!(_loc4_ || _loc3_))
                                 {
                                    §§goto(addr183);
                                 }
                                 continue;
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr118);
                        }
                        else
                        {
                           this.§'Y§[int(_loc3_ * 6)] = _loc3_ * 4;
                        }
                        §§goto(addr289);
                     }
                     §§goto(addr158);
                  }
                  return;
               }
            }
            §§goto(addr71);
         }
         §§goto(addr45);
      }
      
      private function §1!_§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§]C§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        if(param1 != null)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(Boolean(this.§0![§));
                              loop4:
                              while(!_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    while(!(_loc4_ && _loc2_))
                                    {
                                       this.§0![§.dispose();
                                       while(!_loc4_)
                                       {
                                       }
                                       continue loop2;
                                    }
                                    addr146:
                                    §§push(false);
                                    break;
                                    addr120:
                                 }
                                 while(true)
                                 {
                                    §§push(Boolean(this.§^!K§));
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc4_ && this)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc4_ && param1)
                                             {
                                                §§goto(addr138);
                                             }
                                             this.§^!K§.dispose();
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             addr61:
                                             if(!(_loc4_ && this))
                                             {
                                                this.§&-§.dispose();
                                                loop12:
                                                while(_loc3_ || this)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(this.§'d§));
                                                      if(_loc3_ || param1)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop8;
                                                      }
                                                      addr58:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§goto(addr61);
                                                      }
                                                      continue loop9;
                                                   }
                                                   §§push(this.§7!$§.§ !Z§);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(int(§§pop() / 4));
                                                   }
                                                   var _loc2_:* = §§pop();
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      this.§0![§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§4d§);
                                                   }
                                                   this.§0![§.uploadFromByteArray(this.§7!$§.§%!T§,0,0,_loc2_ * 4);
                                                   this.§^!K§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§@!e§);
                                                   this.§^!K§.uploadFromVector(this.§7!$§.§]y§,0,_loc2_ * 4);
                                                   addr283:
                                                   addr332:
                                                   addr321:
                                                   if(!_loc4_)
                                                   {
                                                      this.§&-§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§!<§);
                                                      this.§&-§.uploadFromVector(this.§7!$§.§&c§,0,_loc2_ * 4);
                                                      addr249:
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            this.§'d§ = param1.createIndexBuffer(_loc2_ * 6);
                                                            addr229:
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               this.§'d§.uploadFromVector(this.§'Y§,0,_loc2_ * 6);
                                                               addr211:
                                                               if(_loc3_)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     this.§]C§ = false;
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           §§goto(addr249);
                                                                        }
                                                                        return true;
                                                                     }
                                                                     §§goto(addr211);
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                         §§goto(addr321);
                                                      }
                                                      addr270:
                                                      §§goto(addr270);
                                                   }
                                                   addr307:
                                                   §§goto(addr307);
                                                }
                                                continue loop3;
                                                addr72:
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr58);
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr138);
                     }
                  }
                  §§goto(addr146);
               }
            }
         }
         addr138:
         throw new §<!a§();
      }
      
      private function §&V§(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§1!_§(param1));
            if(_loc3_ || param1)
            {
               §§push(!§§pop());
            }
            loop0:
            for(; §§pop(); while(true)
            {
               §§push(this.§2!0§);
               if(!_loc3_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     if(_loc3_ || param1)
                     {
                        this.§^!K§.uploadFromVector(this.§7!$§.§]y§,0,this.§>!W§ * 4);
                     }
                     else
                     {
                        §§goto(addr107);
                     }
                  }
                  while(true)
                  {
                  }
                  addr94:
               }
               while(true)
               {
                  this.§&-§.uploadFromVector(this.§7!$§.§&c§,0,this.§>!W§ * 4);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr94);
               }
               if(_loc2_)
               {
                  continue;
               }
            })
            {
               while(true)
               {
                  this.§0![§.uploadFromByteArray(this.§7!$§.§%!T§,0,0,this.§>!W§ * 4);
                  continue loop0;
               }
            }
            §§goto(addr25);
         }
         addr25:
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && this))
         {
            if(this.§>!W§ == 0)
            {
               if(!_loc9_)
               {
                  return;
               }
            }
         }
         §§push(this.§7!$§.premultipliedAlpha);
         if(!(_loc9_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param3 == 1);
         if(!_loc9_)
         {
            §§push(!§§pop());
            if(!(_loc9_ && param2))
            {
               addr55:
               §§push(Boolean(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc8_ || param3)
            {
               if(this.§^![§)
               {
                  addr68:
                  §§push(§9%§(_loc5_,this.§^![§.mipMapping,this.§^![§.repeat,this.§=!=§,this.§2!0§));
                  if(!(_loc9_ && param3))
                  {
                     §§push(§§pop());
                     if(!(_loc8_ || param3))
                     {
                        addr102:
                        §§push(§§pop());
                        if(_loc8_)
                        {
                           addr106:
                           var _loc6_:String = §§pop();
                           if(!(_loc9_ && param2))
                           {
                              RenderSupport.§1"§(param1,_loc4_);
                              loop0:
                              while(true)
                              {
                                 this.§&V§(param1);
                                 if(_loc8_ || this)
                                 {
                                    param1.setProgram(Starling.§7!+§.§#+§(_loc6_));
                                    if(_loc8_)
                                    {
                                       if(_loc9_)
                                       {
                                          continue;
                                       }
                                       param1.setVertexBufferAt(0,this.§&-§,VertexData.§@8§,Context3DVertexBufferFormat.FLOAT_3);
                                       if(!_loc9_)
                                       {
                                          §§push(this.§^![§);
                                          if(!_loc9_)
                                          {
                                             §§push(null);
                                             if(_loc8_ || param3)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc8_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc8_ || param3)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc8_ || this)
                                                         {
                                                            addr206:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc9_ && param2))
                                                                  {
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§2!0§);
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc8_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc9_ && param3))
                                                                                    {
                                                                                       param1.setVertexBufferAt(2,this.§^!K§,VertexData.§8!Y§,Context3DVertexBufferFormat.FLOAT_4);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr115:
                                                                                          param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§push(_loc5_);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §`!e§[0] = §`!e§[1] = §`!e§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                                                      addr284:
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      loop13:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§^![§);
                                                                                                         addr428:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               break loop13;
                                                                                                            }
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               addr509:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        param1.setTextureAt(0,this.§^![§.getBase(param1));
                                                                                                                        addr518:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           param1.setVertexBufferAt(1,this.§0![§,VertexData.§+!h§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                                                           addr494:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr510:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     param1.setTextureAt(0,null);
                                                                                                                     addr530:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc9_ && this)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr518);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     addr530:
                                                                                                                     addr471:
                                                                                                                  }
                                                                                                                  §§goto(addr518);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr430:
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      loop10:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc8_ || param3)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  addr441:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.setTextureAt(0,null);
                                                                                                                  }
                                                                                                                  addr441:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§`!e§,1);
                                                                                                                     §§goto(addr530);
                                                                                                                  }
                                                                                                                  addr536:
                                                                                                               }
                                                                                                               §§goto(addr530);
                                                                                                            }
                                                                                                            loop11:
                                                                                                            while(!_loc9_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  param1.setVertexBufferAt(1,null);
                                                                                                                  loop12:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr396:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§^![§);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(null);
                                                                                                                              addr402:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 loop17:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    loop18:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          addr406:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                §§goto(addr406);
                                                                                                                                             }
                                                                                                                                             addr414:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                addr416:
                                                                                                                                                loop27:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr417:
                                                                                                                                                   addr358:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§2!0§);
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(_loc8_ || this)
                                                                                                                                                      {
                                                                                                                                                         break loop7;
                                                                                                                                                      }
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ || this))
                                                                                                                                                      {
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc8_ || param3))
                                                                                                                                                      {
                                                                                                                                                         continue loop17;
                                                                                                                                                      }
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop10;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr416:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr375:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ || param2)
                                                                                                                                                      {
                                                                                                                                                         param1.setVertexBufferAt(2,null);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                         {
                                                                                                                                                            break loop0;
                                                                                                                                                         }
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                      continue loop11;
                                                                                                                                                      addr388:
                                                                                                                                                   }
                                                                                                                                                   addr318:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      param1.setVertexBufferAt(0,null);
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_ || param2)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               continue loop12;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc9_ && param3))
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  return;
                                                                                                                                                                  addr344:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr510);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr494);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr417);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr388);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr509);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr401:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr428);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr471);
                                                                                                            }
                                                                                                            §§goto(addr462);
                                                                                                         }
                                                                                                         §§goto(addr396);
                                                                                                      }
                                                                                                      addr462:
                                                                                                   }
                                                                                                   §§goto(addr344);
                                                                                                }
                                                                                                §§goto(addr496);
                                                                                             }
                                                                                             §§goto(addr375);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr480);
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                 }
                                                                                 §§goto(addr115);
                                                                              }
                                                                              §`!e§[3] = param3;
                                                                              §§goto(addr536);
                                                                              addr142:
                                                                           }
                                                                           §§goto(addr416);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr358);
                                                                     }
                                                                  }
                                                                  §§goto(addr518);
                                                               }
                                                               §§goto(addr509);
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         §§goto(addr414);
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                   §§goto(addr416);
                                                }
                                                §§goto(addr509);
                                             }
                                             §§goto(addr402);
                                          }
                                          §§goto(addr401);
                                       }
                                       §§goto(addr530);
                                    }
                                    §§goto(addr441);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr318);
                              }
                           }
                           §§goto(addr441);
                        }
                     }
                  }
                  §§goto(addr106);
               }
               else
               {
                  §§push(§"h§(_loc5_));
                  if(_loc8_)
                  {
                     §§goto(addr102);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr68);
         }
         §§goto(addr55);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>!W§ = 0;
            loop0:
            while(true)
            {
               this.§2!0§ = false;
               loop1:
               while(true)
               {
                  this.§^![§ = null;
                  loop2:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        this.§=!=§ = null;
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §8Q§(param1:§6!Y§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param1))
         {
            §§push(this.§>!W§);
            loop0:
            while(true)
            {
               §§push(1);
               if(_loc9_ || this)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc10_)
                  {
                     if(§§pop() > this.§7!$§.§ !Z§ / 4)
                     {
                        while(true)
                        {
                           this.§3T§();
                           addr148:
                           while(true)
                           {
                           }
                           addr75:
                           if(_loc10_ && param1)
                           {
                              continue;
                           }
                           while(true)
                           {
                              if(false)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§=!=§ = param4;
                                    while(true)
                                    {
                                       §§push(this.§7!$§);
                                       if(_loc9_ || this)
                                       {
                                          §§push(Boolean(param3));
                                          if(_loc9_)
                                          {
                                             if(§§pop())
                                             {
                                                addr39:
                                                §§push(param3.premultipliedAlpha);
                                                if(!(_loc10_ && param3))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc9_)
                                                   {
                                                      addr56:
                                                      §§pop().setPremultipliedAlpha(§§pop(),false);
                                                      if(!(_loc10_ && this))
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                      addr51:
                                                   }
                                                   §§goto(addr56);
                                                }
                                                addr55:
                                                §§push(Boolean(§§pop()));
                                             }
                                             else
                                             {
                                                §§push(true);
                                                if(_loc9_)
                                                {
                                                   §§goto(addr55);
                                                }
                                             }
                                             §§goto(addr56);
                                          }
                                          §§goto(addr51);
                                       }
                                       §§goto(addr39);
                                    }
                                    if(!_loc10_)
                                    {
                                       addr68:
                                       if(_loc9_ || param3)
                                       {
                                          §§goto(addr75);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(_loc9_ || this)
                                             {
                                                this.§^![§ = param3;
                                                break loop6;
                                             }
                                             break;
                                             §§goto(addr68);
                                          }
                                          §§goto(addr148);
                                          addr105:
                                       }
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr84);
                                 }
                                 addr84:
                              }
                              else
                              {
                                 addr149:
                                 §§push(this.§>!W§);
                                 if(!_loc10_)
                                 {
                                    addr153:
                                    §§push(int(§§pop() * 4));
                                 }
                              }
                              var _loc6_:* = §§pop();
                              if(!_loc10_)
                              {
                                 §§push(param2);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(§§pop() * param1.alpha);
                                    if(!(_loc10_ && param3))
                                    {
                                       addr269:
                                       §§push(Number(§§pop()));
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       param2 = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          param1.copyVertexDataTo(this.§7!$§,_loc6_,param2,param5);
                                          addr240:
                                          loop11:
                                          while(true)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(_loc10_)
                                                {
                                                   continue loop9;
                                                }
                                                §§push(§§pop() == 1);
                                                if(_loc9_ || param2)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc9_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc10_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop11;
                                                         addr165:
                                                         if(_loc9_ || param3)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            continue loop13;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(_loc9_ || this)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               this.§2!0§ = true;
                                                               if(_loc10_)
                                                               {
                                                                  return;
                                                               }
                                                               addr196:
                                                               if(!_loc9_)
                                                               {
                                                                  break loop12;
                                                               }
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop12;
                                                               addr292:
                                                            }
                                                            continue loop11;
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      var _loc7_:*;
                                                      §§push((_loc7_ = this).§>!W§);
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         _loc7_.§>!W§ = _loc8_;
                                                      }
                                                      §§goto(addr292);
                                                      addr180:
                                                   }
                                                }
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr269);
                              }
                              §§goto(addr240);
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(this.§>!W§);
                        if(_loc10_)
                        {
                           break;
                        }
                        continue loop0;
                        §§goto(addr148);
                     }
                  }
               }
               §§goto(addr153);
            }
         }
         §§goto(addr82);
      }
      
      public function §>!>§(param1:§6!Y§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §§push(this.§^![§);
            loop0:
            while(true)
            {
               §§push(null);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          §§push(param2 == null);
                                          if(_loc4_ || param3)
                                          {
                                             §§push(!§§pop());
                                             loop9:
                                             for(; !_loc5_; if(!(_loc4_ || this))
                                             {
                                                continue;
                                             },§§goto(addr175),§§push(Boolean(§§pop())))
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   loop20:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(this.§^![§);
                                                            if(_loc4_)
                                                            {
                                                               §§push(null);
                                                               if(_loc5_ && param2)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() == §§pop());
                                                               loop22:
                                                               while(_loc4_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop24:
                                                                        while(_loc4_ || this)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§>!W§);
                                                                                       if(!(_loc5_ && param3))
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc4_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   loop27:
                                                                                                   while(_loc4_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc4_ || param1)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           loop29:
                                                                                                                           for(; _loc4_ || param3; if(_loc5_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           })
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc4_ || this)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§2!0§);
                                                                                                                                          if(_loc5_ && param3)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop27;
                                                                                                                                          }
                                                                                                                                          if(!(_loc5_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(param1.useColor);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                continue loop28;
                                                                                                                                             }
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                continue loop24;
                                                                                                                                             }
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      addr59:
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      addr313:
                                                                                                                                                      if(!(_loc5_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         addr321:
                                                                                                                                                         if(!(_loc4_ || this))
                                                                                                                                                         {
                                                                                                                                                            loop37:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr280:
                                                                                                                                                               §§push(this.§2!0§);
                                                                                                                                                               if(!(_loc5_ && this))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               loop34:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr406:
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  if(!(_loc4_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  loop42:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     loop43:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        loop41:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop38:
                                                                                                                                                                              while(!(_loc5_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 §§push(this.§=!=§ == param3);
                                                                                                                                                                                 if(!(_loc4_ || this))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop7;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr345:
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr349:
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(!(_loc4_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                          if(_loc5_ && param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop41;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr311:
                                                                                                                                                                                                break loop24;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr272:
                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                             addr309:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                          addr470:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop42;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr472:
                                                                                                                                                                                                while(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§^![§);
                                                                                                                                                                                                   while(!(_loc5_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().repeat);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(param2.repeat);
                                                                                                                                                                                                         if(!(_loc5_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc5_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                                  continue loop34;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop41;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop6;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop0;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop8;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr469:
                                                                                                                                                                                       addr347:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr466:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                          addr467:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             break loop38;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr466:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    continue loop37;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr469);
                                                                                                                                                                              }
                                                                                                                                                                              addr417:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr347);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr291:
                                                                                                                                                               §§push(param1.useColor);
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        break loop22;
                                                                                                                                                                     }
                                                                                                                                                                     break loop22;
                                                                                                                                                                  }
                                                                                                                                                                  break loop22;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr470);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr467);
                                                                                                                                                            addr368:
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§>!W§);
                                                                                                                                                         break loop26;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr417);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr406);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr367);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr243:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr244:
                                                                                                                                                               addr443:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc5_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param2 == null);
                                                                                                                                                                        break loop29;
                                                                                                                                                                        addr258:
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr321);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§^![§);
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr243:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr368);
                                                                                                                                                      }
                                                                                                                                                      addr175:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr321);
                                                                                                                                                }
                                                                                                                                                §§goto(addr59);
                                                                                                                                             }
                                                                                                                                             §§goto(addr349);
                                                                                                                                          }
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(_loc5_ && param1)
                                                                                                                                          {
                                                                                                                                             continue loop2;
                                                                                                                                          }
                                                                                                                                          §§goto(addr272);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr188:
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(false);
                                                                                                                                             break loop27;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr244);
                                                                                                                                    }
                                                                                                                                    else if(_loc4_)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop26;
                                                                                                                                       }
                                                                                                                                       §§goto(addr472);
                                                                                                                                    }
                                                                                                                                    else if(_loc4_)
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    §§goto(addr425);
                                                                                                                                 }
                                                                                                                                 §§goto(addr334);
                                                                                                                              }
                                                                                                                              §§goto(addr345);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && this))
                                                                                                                              {
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              §§goto(addr380);
                                                                                                                              §§goto(addr258);
                                                                                                                           }
                                                                                                                           §§goto(addr321);
                                                                                                                           addr134:
                                                                                                                        }
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr291);
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                               addr129:
                                                                                                            }
                                                                                                            §§goto(addr357);
                                                                                                         }
                                                                                                         §§goto(addr311);
                                                                                                      }
                                                                                                      §§goto(addr129);
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   §§goto(addr280);
                                                                                                }
                                                                                                §§goto(addr265);
                                                                                             }
                                                                                             §§goto(addr134);
                                                                                          }
                                                                                          addr263:
                                                                                          §§goto(addr265);
                                                                                          §§push(§§pop() == §§pop());
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr263);
                                                                                    §§push(8192);
                                                                                 }
                                                                                 §§goto(addr188);
                                                                              }
                                                                           }
                                                                           §§goto(addr243);
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr313);
                                                                        }
                                                                        §§goto(addr272);
                                                                     }
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr309);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr397);
                                                               }
                                                               §§goto(addr471);
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                         continue loop1;
                                                      }
                                                      §§goto(addr443);
                                                   }
                                                }
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr466);
                                       }
                                    }
                                 }
                                 §§goto(addr441);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr443);
      }
   }
}
