package §2m§
{
   import §4!F§.AGALMiniAssembler;
   import §7H§.§'!w§;
   import §?]§.§7l§;
   import §?]§.Texture;
   import §[z§.§+"#§;
   import §`g§.§ O§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §^[§
   {
      
      private static var §%=§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%=§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §`7§:int;
      
      private var §%6§:Texture;
      
      private var §8M§:String;
      
      private var §[!K§:§'!w§;
      
      private var §#-§:VertexBuffer3D;
      
      private var §1!&§:VertexBuffer3D;
      
      private var §^!p§:VertexBuffer3D;
      
      private var §@!y§:Vector.<uint>;
      
      private var §else§:IndexBuffer3D;
      
      private var §7!W§:Boolean = false;
      
      private var §+=§:Boolean = false;
      
      public function §^[§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               §9!%§();
               while(true)
               {
                  this.§[!K§ = new §'!w§(0,true);
                  continue loop0;
                  addr67:
                  if(!(_loc2_ && this))
                  {
                     this.§`7§ = 0;
                     loop4:
                     do
                     {
                        if(_loc1_)
                        {
                           continue;
                        }
                        addr55:
                        while(!_loc2_)
                        {
                           §§goto(addr67);
                           continue loop4;
                        }
                        continue loop0;
                     }
                     while(this.§'k§(), !_loc1_);
                     
                     return;
                     addr28:
                  }
               }
            }
         }
         §§goto(addr28);
      }
      
      public static function § l§(param1:DisplayObjectContainer, param2:Vector.<§^[§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §-§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §-§(param1:DisplayObject, param2:Vector.<§^[§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§ O§ = null;
         var _loc13_:§"<§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:§^[§ = null;
         var _loc7_:Boolean = false;
         if(_loc18_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() == -1)
               {
                  if(_loc18_ || §^[§)
                  {
                     addr159:
                     _loc7_ = true;
                  }
                  addr146:
                  param3 = 0;
                  addr147:
                  if(param2.length == 0)
                  {
                     addr137:
                     param2.push(new §^[§());
                     addr141:
                     if(!_loc18_)
                     {
                        §§goto(addr147);
                     }
                     if(param1 is DisplayObjectContainer)
                     {
                        §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                        if(!_loc17_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc9_ = §§pop();
                        _loc10_ = new Matrix3D();
                        if(!_loc17_)
                        {
                           §§push(param5);
                           if(_loc18_ || param3)
                           {
                              §§push(param1.alpha);
                              if(!_loc17_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc17_ && param3))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc18_ || §^[§)
                                    {
                                    }
                                    addr214:
                                    if(§§pop() > 0)
                                    {
                                       if(!(_loc17_ && §^[§))
                                       {
                                          _loc6_ = 0;
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr301);
                                 }
                                 §§push(§§pop());
                                 if(!_loc17_)
                                 {
                                    addr213:
                                    param5 = §§pop();
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr214);
                        }
                        addr225:
                        loop6:
                        while(true)
                        {
                           §§push(_loc6_);
                           if(!(_loc17_ && §^[§))
                           {
                              §§push(_loc9_);
                              if(!_loc17_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!_loc17_)
                                    {
                                       addr430:
                                       §§push(_loc7_);
                                       if(!(_loc17_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc17_ && param1))
                                             {
                                                §§goto(addr446);
                                             }
                                             §§goto(addr465);
                                          }
                                          §§goto(addr486);
                                       }
                                       §§goto(addr518);
                                       addr301:
                                    }
                                    addr446:
                                    §§push(int(param2.length - 1));
                                    if(_loc18_ || §^[§)
                                    {
                                       _loc6_ = §§pop();
                                       if(!(_loc17_ && param3))
                                       {
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(_loc18_ || param3)
                                             {
                                                addr476:
                                                if(§§pop() <= param3)
                                                {
                                                   if(_loc17_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc17_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                         addr487:
                                                         while(_loc18_)
                                                         {
                                                            if(!(_loc17_ && param2))
                                                            {
                                                               §§goto(addr506);
                                                            }
                                                         }
                                                         break loop6;
                                                      }
                                                      addr486:
                                                   }
                                                   else
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            addr528:
                                                            while(true)
                                                            {
                                                               §§push(delete param2[_loc6_]);
                                                               addr518:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop14;
                                                               }
                                                               continue loop14;
                                                            }
                                                            addr528:
                                                         }
                                                         §§push(_loc6_);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      break loop6;
                                                   }
                                                }
                                                else
                                                {
                                                   param2[_loc6_].dispose();
                                                }
                                                §§goto(addr528);
                                             }
                                             §§goto(addr487);
                                          }
                                          addr466:
                                          addr465:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr466);
                                       }
                                       §§goto(addr528);
                                       addr513:
                                    }
                                    §§goto(addr506);
                                 }
                                 else
                                 {
                                    _loc11_ = _loc8_.getChildAt(_loc6_);
                                    if(_loc18_)
                                    {
                                       _loc10_.copyFrom(param4);
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       _loc11_.§0!"§(_loc10_);
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§-§(_loc11_,param2,param3,_loc10_,param5));
                                             if(!(_loc17_ && param2))
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             param3 = §§pop();
                                             while(_loc18_)
                                             {
                                                _loc6_++;
                                                if(!(_loc17_ && §^[§))
                                                {
                                                   if(!_loc17_)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop9;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr476);
                           }
                           break;
                        }
                        while(true)
                        {
                           _loc6_ = §§pop();
                           §§goto(addr513);
                        }
                        addr506:
                        return §§pop();
                     }
                     if(!(param1 is § O§))
                     {
                        throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                     }
                     if(!_loc17_)
                     {
                        _loc14_ = !!(_loc13_ = (_loc12_ = param1 as § O§) as §"<§) ? _loc13_.texture : null;
                        if(_loc18_ || param3)
                        {
                           if(_loc13_)
                           {
                              if(_loc18_ || §^[§)
                              {
                                 addr344:
                                 §§push(_loc13_.smoothing);
                                 if(!(_loc17_ && param1))
                                 {
                                    §§push(§§pop());
                                    if(_loc17_)
                                    {
                                    }
                                    addr367:
                                    _loc15_ = §§pop();
                                    if((_loc16_ = param2[param3]).get(_loc12_,_loc14_,_loc15_,param5))
                                    {
                                       if(_loc18_ || param1)
                                       {
                                          param3++;
                                          if(_loc18_)
                                          {
                                             if(param2.length <= param3)
                                             {
                                                if(_loc17_)
                                                {
                                                }
                                                addr407:
                                                (_loc16_ = param2[param3]).reset();
                                                addr414:
                                                _loc16_.§>$§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                §§goto(addr430);
                                             }
                                             §§goto(addr407);
                                          }
                                          param2.push(new §^[§());
                                          if(_loc18_ || param1)
                                          {
                                          }
                                       }
                                       §§goto(addr407);
                                    }
                                    §§goto(addr414);
                                 }
                                 addr366:
                                 §§goto(addr367);
                                 §§push(§§pop());
                              }
                              §§goto(addr367);
                           }
                           else
                           {
                              §§push(null);
                              if(!(_loc17_ && param3))
                              {
                                 §§goto(addr366);
                              }
                           }
                           §§goto(addr367);
                        }
                        §§goto(addr344);
                     }
                     §§goto(addr430);
                     addr102:
                  }
                  param2[0].reset();
                  addr129:
                  if(!_loc18_)
                  {
                     §§goto(addr137);
                  }
                  §§goto(addr102);
                  addr160:
               }
               else
               {
                  §§push(param1.alpha == 0);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(!_loc17_)
                           {
                              §§pop();
                              loop3:
                              while(true)
                              {
                                 if(_loc17_ && §^[§)
                                 {
                                    break loop2;
                                 }
                                 §§push(param1.visible);
                                 if(!_loc17_)
                                 {
                                    if(!(_loc18_ || param1))
                                    {
                                       continue loop2;
                                    }
                                    if(!_loc18_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(!§§pop());
                                    if(_loc18_)
                                    {
                                       while(true)
                                       {
                                          addr68:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc18_)
                                                {
                                                   if(_loc17_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!_loc17_)
                                                   {
                                                      §§push(param3);
                                                      if(_loc17_)
                                                      {
                                                         break loop3;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr141);
                                                }
                                                else if(!(_loc17_ && param3))
                                                {
                                                   if(false)
                                                   {
                                                   }
                                                   §§goto(addr137);
                                                }
                                                else
                                                {
                                                   §§goto(addr129);
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr137);
                                          }
                                       }
                                       addr67:
                                    }
                                    §§goto(addr137);
                                 }
                                 §§goto(addr68);
                              }
                              §§goto(addr146);
                           }
                           else
                           {
                              §§goto(addr159);
                           }
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr67);
                  }
               }
               §§goto(addr137);
            }
         }
         §§goto(addr146);
      }
      
      private static function §9!%§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         var _loc8_:Array = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc1_:§<!?§ = §<!?§.§,=§;
         if(!(_loc24_ && §^[§))
         {
            if(_loc1_.§3h§(§%L§(true)))
            {
               if(!(_loc24_ && _loc3_))
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
               loop2:
               while(true)
               {
                  §§push("m44 op, va0, vc0  \n");
                  while(true)
                  {
                     §§push("mov v0, va2       \n");
                     addr186:
                     addr151:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        addr187:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           continue loop1;
                        }
                     }
                     if(!(_loc23_ || §^[§))
                     {
                        continue;
                     }
                     §§push("mov oc, ft0       \n");
                     if(_loc23_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc24_)
                        {
                           if(!(_loc23_ || _loc3_))
                           {
                              §§goto(addr187);
                           }
                        }
                        addr173:
                        _loc5_ = §§pop();
                        if(_loc24_ && _loc1_)
                        {
                           continue loop0;
                        }
                        _loc2_.§9!+§(Context3DProgramType.VERTEX,_loc4_);
                        if(_loc24_ && _loc2_)
                        {
                           continue loop0;
                        }
                        loop7:
                        while(true)
                        {
                           _loc3_.§9!+§(Context3DProgramType.FRAGMENT,_loc5_);
                           while(_loc23_)
                           {
                              if(_loc24_ && _loc2_)
                              {
                                 continue loop2;
                              }
                              _loc1_.§2!a§(§%L§(_loc6_),_loc2_.§;!M§,_loc3_.§;!M§);
                              if(!_loc23_)
                              {
                                 continue loop0;
                              }
                              if(_loc24_)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 continue loop7;
                              }
                              var _loc15_:int = 0;
                              if(_loc23_)
                              {
                                 var _loc16_:* = [true,false];
                                 if(_loc23_)
                                 {
                                    addr721:
                                    if(§§hasnext(_loc16_,_loc15_))
                                    {
                                       addr440:
                                       _loc7_ = §§nextvalue(_loc15_,_loc16_);
                                       addr442:
                                       if(_loc7_)
                                       {
                                          addr456:
                                          addr457:
                                          addr443:
                                          §§push("m44 op, va0, vc0  \n");
                                          if(!_loc24_)
                                          {
                                             addr452:
                                             §§push("mov v0, va1 \n");
                                             if(_loc23_)
                                             {
                                                addr450:
                                                §§push(§§pop() + §§pop());
                                                §§push("mov v1, va2       \n");
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          _loc4_ = §§pop();
                                          addr458:
                                          if(_loc7_)
                                          {
                                             if(!(_loc24_ && _loc3_))
                                             {
                                                addr371:
                                                §§push(_loc6_);
                                                if(!(_loc24_ && §^[§))
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr379:
                                                      if(!(_loc24_ && _loc3_))
                                                      {
                                                         §§push("tex ft1, v0, fs0 <???>  \n");
                                                         if(_loc23_ || §^[§)
                                                         {
                                                            addr395:
                                                            §§push(§§pop() + "mul ft1, ft1, v1        \n");
                                                            if(_loc23_)
                                                            {
                                                               addr427:
                                                               §§push(§§pop() + "mul oc, ft1, fc0        \n");
                                                               if(_loc23_)
                                                               {
                                                                  if(_loc23_)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     addr209:
                                                                     _loc2_.§9!+§(Context3DProgramType.VERTEX,_loc4_);
                                                                     addr228:
                                                                     addr433:
                                                                     if(!_loc24_)
                                                                     {
                                                                        if(!_loc24_)
                                                                        {
                                                                           if(!(_loc24_ && _loc3_))
                                                                           {
                                                                              addr226:
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr228);
                                                                              }
                                                                              addr461:
                                                                              _loc8_ = [§7l§.NONE,§7l§.§6!%§,§7l§.§`!,§];
                                                                              if(!_loc24_)
                                                                              {
                                                                                 var _loc17_:int = 0;
                                                                                 if(!(_loc24_ && §^[§))
                                                                                 {
                                                                                    var _loc18_:* = [true,false];
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                    }
                                                                                    addr717:
                                                                                    for each(_loc9_ in _loc18_)
                                                                                    {
                                                                                       if(!(_loc24_ && _loc3_))
                                                                                       {
                                                                                          var _loc19_:int = 0;
                                                                                          if(!(_loc24_ && §^[§))
                                                                                          {
                                                                                             var _loc20_:* = [true,false];
                                                                                             if(_loc23_ || _loc3_)
                                                                                             {
                                                                                             }
                                                                                             addr713:
                                                                                             for each(_loc10_ in _loc20_)
                                                                                             {
                                                                                                if(!(_loc24_ && _loc1_))
                                                                                                {
                                                                                                   var _loc21_:int = 0;
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      var _loc22_:* = _loc8_;
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         addr709:
                                                                                                         for each(_loc11_ in _loc22_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr712:
                                                                                                         §§goto(addr713);
                                                                                                      }
                                                                                                      §§push("2d");
                                                                                                      if(!(_loc24_ && _loc1_))
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr561:
                                                                                                            §§push("repeat");
                                                                                                            if(_loc23_ || _loc1_)
                                                                                                            {
                                                                                                               addr573:
                                                                                                               _loc12_ = null;
                                                                                                               if(!(_loc24_ && _loc1_))
                                                                                                               {
                                                                                                                  addr687:
                                                                                                                  if(_loc11_ == §7l§.NONE)
                                                                                                                  {
                                                                                                                     addr688:
                                                                                                                     §§push(_loc12_);
                                                                                                                     §§push("nearest");
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        addr707:
                                                                                                                        §§pop().push(§§pop(),"mipnearest");
                                                                                                                        addr621:
                                                                                                                        _loc3_.§9!+§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                                                                                                                        addr708:
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           _loc1_.§2!a§(§,2§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§;!M§,_loc3_.§;!M§);
                                                                                                                           if(_loc23_ || §^[§)
                                                                                                                           {
                                                                                                                              if(_loc23_ || _loc1_)
                                                                                                                              {
                                                                                                                                 if(!(_loc24_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    addr619:
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr621);
                                                                                                                                    }
                                                                                                                                    §§goto(addr709);
                                                                                                                                 }
                                                                                                                                 §§goto(addr621);
                                                                                                                                 addr683:
                                                                                                                              }
                                                                                                                              addr647:
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr621);
                                                                                                                                 }
                                                                                                                                 §§goto(addr688);
                                                                                                                              }
                                                                                                                              §§goto(addr708);
                                                                                                                           }
                                                                                                                           §§goto(addr621);
                                                                                                                        }
                                                                                                                        addr673:
                                                                                                                        §§push(_loc12_);
                                                                                                                        §§push("linear");
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr682:
                                                                                                                           §§pop().push(§§pop(),"mipnearest");
                                                                                                                           §§goto(addr683);
                                                                                                                        }
                                                                                                                        §§goto(addr682);
                                                                                                                        §§push("mipnone");
                                                                                                                     }
                                                                                                                     §§goto(addr707);
                                                                                                                     §§push("mipnone");
                                                                                                                  }
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(!(_loc24_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§7l§.§6!%§);
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr673);
                                                                                                                        }
                                                                                                                        §§push(_loc12_);
                                                                                                                        §§push("linear");
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr646:
                                                                                                                           §§pop().push(§§pop(),"miplinear");
                                                                                                                           §§goto(addr647);
                                                                                                                        }
                                                                                                                        §§goto(addr646);
                                                                                                                        §§push("mipnone");
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr687);
                                                                                                               }
                                                                                                               §§goto(addr619);
                                                                                                            }
                                                                                                            addr572:
                                                                                                            §§goto(addr573);
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                         §§goto(addr572);
                                                                                                         §§push("clamp");
                                                                                                      }
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                   §§goto(addr712);
                                                                                                }
                                                                                                §§goto(addr713);
                                                                                             }
                                                                                             addr716:
                                                                                             §§goto(addr717);
                                                                                          }
                                                                                          §§goto(addr716);
                                                                                       }
                                                                                       §§goto(addr717);
                                                                                    }
                                                                                    addr720:
                                                                                    §§goto(addr721);
                                                                                 }
                                                                                 §§goto(addr720);
                                                                              }
                                                                              §§goto(addr721);
                                                                           }
                                                                           §§goto(addr458);
                                                                        }
                                                                        addr249:
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push("tex ft1, v0, fs0 <???>  \n");
                                                                           if(_loc23_)
                                                                           {
                                                                              if(_loc23_ || _loc3_)
                                                                              {
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    if(!(_loc24_ && _loc2_))
                                                                                    {
                                                                                       §§push("mul oc, ft1, fc0        \n");
                                                                                       if(!(_loc24_ && _loc1_))
                                                                                       {
                                                                                          if(!(_loc24_ && _loc1_))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                if(_loc23_ || _loc2_)
                                                                                                {
                                                                                                   addr338:
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      addr347:
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         §§goto(addr209);
                                                                                                      }
                                                                                                      §§goto(addr433);
                                                                                                   }
                                                                                                   §§goto(addr461);
                                                                                                }
                                                                                                addr420:
                                                                                                if(!(_loc24_ && §^[§))
                                                                                                {
                                                                                                   §§goto(addr427);
                                                                                                }
                                                                                                §§goto(addr450);
                                                                                             }
                                                                                             addr304:
                                                                                             if(_loc23_ || _loc2_)
                                                                                             {
                                                                                                addr312:
                                                                                                §§push("mov oc, ft1 \n");
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   if(_loc23_ || §^[§)
                                                                                                   {
                                                                                                      if(_loc23_ || _loc2_)
                                                                                                      {
                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                         {
                                                                                                            addr336:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               §§goto(addr338);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr452);
                                                                                                      }
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                   §§goto(addr427);
                                                                                                }
                                                                                                addr455:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                §§push("mov oc, ft1 \n");
                                                                                                if(_loc23_ || _loc3_)
                                                                                                {
                                                                                                   §§goto(addr420);
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§goto(addr456);
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr455);
                                                                                             §§push("mov v0, va1 \n");
                                                                                          }
                                                                                          §§goto(addr455);
                                                                                       }
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§goto(addr395);
                                                                                 }
                                                                                 §§goto(addr427);
                                                                              }
                                                                              §§goto(addr312);
                                                                           }
                                                                           §§goto(addr336);
                                                                        }
                                                                        §§goto(addr379);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  §§goto(addr457);
                                                               }
                                                               §§goto(addr461);
                                                            }
                                                            §§goto(addr456);
                                                         }
                                                         §§goto(addr427);
                                                      }
                                                      §§goto(addr443);
                                                   }
                                                   §§push("tex ft1, v0, fs0 <???>  \n");
                                                   if(!(_loc24_ && _loc3_))
                                                   {
                                                      §§goto(addr312);
                                                      §§push("mul ft1, ft1, v1        \n");
                                                   }
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr442);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§push(_loc6_);
                                          if(!_loc24_)
                                          {
                                             if(!(_loc24_ && _loc1_))
                                             {
                                                if(_loc23_ || _loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr249);
                                                   }
                                                   §§push("tex ft1, v0, fs0 <???>  \n");
                                                   if(!(_loc24_ && §^[§))
                                                   {
                                                      §§goto(addr304);
                                                   }
                                                   §§goto(addr336);
                                                }
                                                §§goto(addr440);
                                             }
                                             §§goto(addr456);
                                          }
                                          §§goto(addr371);
                                       }
                                       §§goto(addr304);
                                       §§push("m44 op, va0, vc0  \n");
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr721);
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
      
      public static function §%L§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1)
            {
               addr21:
               §§push("QB_q*");
               if(!_loc3_)
               {
               }
            }
            else
            {
               return "QB_q\'";
            }
            return §§pop();
         }
         §§goto(addr21);
      }
      
      public static function §,2§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(param1)
            {
               addr20:
               §§push("QB_i*");
               if(_loc8_ && param1)
               {
               }
            }
            else
            {
               §§push("QB_i\'");
            }
            var _loc6_:* = §§pop();
            if(_loc7_ || §^[§)
            {
               §§push(param2);
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        addr197:
                        while(true)
                        {
                           §§push("N");
                           addr198:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr199:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr200:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr196:
                  }
                  while(true)
                  {
                     §§push(param3);
                     loop7:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        loop8:
                        while(true)
                        {
                           §§push(_loc6_);
                           loop9:
                           while(true)
                           {
                              §§push("R");
                              loop10:
                              while(!(_loc8_ && §^[§))
                              {
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    addr191:
                                    while(true)
                                    {
                                       if(!_loc8_)
                                       {
                                          continue loop7;
                                       }
                                       §§goto(addr196);
                                    }
                                    addr141:
                                    §§goto(addr197);
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_ && param2)
                                    {
                                       continue;
                                    }
                                    if(_loc7_ || §^[§)
                                    {
                                       _loc6_ = §§pop();
                                       loop16:
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop8;
                                          }
                                          if(!(_loc8_ && param3))
                                          {
                                             while(true)
                                             {
                                                §§push(param4);
                                                loop18:
                                                while(!_loc8_)
                                                {
                                                   §§push(§7l§.§6!%§);
                                                   if(!_loc8_)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         loop20:
                                                         while(true)
                                                         {
                                                            if(_loc7_ || param1)
                                                            {
                                                               while(true)
                                                               {
                                                                  addr40:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop20;
                                                                     }
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     if(_loc7_ || §^[§)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                               }
                                                               addr112:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                      }
                                                      §§goto(addr40);
                                                   }
                                                   else
                                                   {
                                                      addr100:
                                                      §§push(§§pop() + §§pop().charAt(0));
                                                   }
                                                   §§goto(addr104);
                                                }
                                                addr126:
                                                while(!(_loc8_ && param3))
                                                {
                                                   §§push("C");
                                                   if(_loc8_ && param2)
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§goto(addr141);
                                                }
                                                continue loop9;
                                             }
                                             addr56:
                                          }
                                          §§goto(addr200);
                                       }
                                    }
                                    §§goto(addr199);
                                 }
                              }
                              §§goto(addr198);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr112);
         }
         §§goto(addr20);
      }
      
      public function get §;!K§() : int
      {
         return this.§`7§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§#-§)
            {
               while(true)
               {
                  this.§#-§.dispose();
                  addr102:
                  while(true)
                  {
                  }
                  addr29:
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  this.§else§.dispose();
                  addr49:
                  if(!(_loc1_ || _loc2_))
                  {
                     loop6:
                     while(true)
                     {
                        addr23:
                        while(true)
                        {
                           if(!this.§else§)
                           {
                              break loop6;
                           }
                           if(_loc2_)
                           {
                              continue loop6;
                           }
                           §§goto(addr29);
                           continue loop6;
                        }
                     }
                     addr19:
                     return;
                     addr85:
                  }
                  §§goto(addr19);
               }
            }
            loop2:
            while(true)
            {
               if(this.§1!&§)
               {
                  while(true)
                  {
                     this.§1!&§.dispose();
                     addr93:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                        }
                     }
                     continue loop2;
                  }
                  addr90:
               }
               while(this.§^!p§)
               {
                  if(_loc1_)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           this.§^!p§.dispose();
                           §§goto(addr85);
                        }
                        else
                        {
                           §§goto(addr90);
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr19);
               }
               §§goto(addr23);
            }
         }
         §§goto(addr95);
      }
      
      private function §'k§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§[!K§.§52§);
         if(_loc4_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc2_)
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr58);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!_loc5_)
                     {
                        §§push(2);
                     }
                     §§goto(addr57);
                  }
               }
               §§push(int(§§pop() * §§pop()));
               if(!_loc5_)
               {
                  §§goto(addr57);
               }
               addr58:
               §§goto(addr40);
            }
            §§goto(addr57);
         }
         addr40:
         §§push(16);
         if(!(_loc5_ && this))
         {
            addr57:
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§[!K§.§52§ = _loc2_ * 4;
         }
         §§push(_loc1_);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     this.§+=§ = true;
                     addr93:
                     if(!_loc5_)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           if(_loc4_ || this)
                           {
                              break;
                           }
                           this.§@!y§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                           loop6:
                           while(true)
                           {
                              this.§@!y§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                              addr204:
                              while(!_loc4_)
                              {
                                 continue loop6;
                              }
                              this.§@!y§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                           }
                           addr247:
                        }
                        while(true)
                        {
                           this.§@!y§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                        }
                     }
                     while(true)
                     {
                        this.§@!y§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                        addr153:
                        while(true)
                        {
                           _loc3_++;
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     §§goto(addr204);
                  }
                  continue;
               }
               §§goto(addr93);
            }
            else
            {
               this.§@!y§[int(_loc3_ * 6)] = _loc3_ * 4;
            }
            §§goto(addr247);
         }
      }
      
      private function §`!u§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§+=§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     if(param1 != null)
                     {
                        loop1:
                        while(true)
                        {
                           if(this.§#-§)
                           {
                              while(true)
                              {
                                 this.§#-§.dispose();
                                 §§goto(addr92);
                              }
                              addr89:
                           }
                           while(true)
                           {
                              if(this.§1!&§)
                              {
                                 loop5:
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    this.§1!&§.dispose();
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr89);
                                       }
                                       addr35:
                                       if(_loc3_ && param1)
                                       {
                                          continue;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop5;
                                       }
                                       this.§else§.dispose();
                                       addr47:
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             if(this.§^!p§)
                                             {
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break loop6;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc4_ || this))
                                                   {
                                                      addr109:
                                                      return false;
                                                      addr108:
                                                   }
                                                   this.§^!p§.dispose();
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                continue loop1;
                                                addr53:
                                             }
                                             while(this.§else§)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§goto(addr35);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr53);
                                                      }
                                                   }
                                                   §§goto(addr67);
                                                }
                                                §§goto(addr47);
                                             }
                                          }
                                          addr49:
                                       }
                                       §§push(this.§[!K§.§52§);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(int(§§pop() / 4));
                                       }
                                       var _loc2_:* = §§pop();
                                       if(_loc4_)
                                       {
                                          this.§#-§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§#![§);
                                       }
                                       this.§#-§.uploadFromByteArray(this.§[!K§.§%r§,0,0,_loc2_ * 4);
                                       this.§1!&§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§%I§);
                                       addr262:
                                       if(!_loc3_)
                                       {
                                          this.§1!&§.uploadFromVector(this.§[!K§.§<`§,0,_loc2_ * 4);
                                          this.§^!p§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§9>§);
                                          this.§^!p§.uploadFromVector(this.§[!K§.§1'§,0,_loc2_ * 4);
                                          addr226:
                                          addr214:
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                this.§else§ = param1.createIndexBuffer(_loc2_ * 6);
                                                addr180:
                                                if(!_loc3_)
                                                {
                                                   this.§else§.uploadFromVector(this.§@!y§,0,_loc2_ * 6);
                                                   this.§+=§ = false;
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr226);
                                                            }
                                                            return true;
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   addr171:
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr226);
                                             }
                                          }
                                          §§goto(addr262);
                                       }
                                       addr272:
                                       §§goto(addr272);
                                    }
                                    addr92:
                                    §§goto(addr99);
                                 }
                                 continue loop0;
                              }
                              §§goto(addr49);
                           }
                        }
                     }
                     addr99:
                     while(!_loc3_)
                     {
                     }
                     throw new §+"#§();
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr109);
         }
         §§goto(addr110);
      }
      
      private function §%d§(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§`!u§(param1));
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  §§push(this.§7!W§);
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     loop3:
                     while(!(_loc2_ && this))
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           this.§1!&§.uploadFromVector(this.§[!K§.§<`§,0,this.§`7§ * 4);
                           loop4:
                           while(true)
                           {
                              addr29:
                              while(true)
                              {
                                 this.§^!p§.uploadFromVector(this.§[!K§.§1'§,0,this.§`7§ * 4);
                                 if(!(_loc2_ && this))
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              break loop0;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              this.§#-§.uploadFromByteArray(this.§[!K§.§%r§,0,0,this.§`7§ * 4);
                              break loop3;
                           }
                           addr107:
                        }
                     }
                     continue;
                  }
                  §§goto(addr29);
               }
            }
            return;
         }
         §§goto(addr107);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            if(this.§`7§ == 0)
            {
               if(_loc8_ || this)
               {
                  return;
               }
            }
         }
         §§push(this.§[!K§.premultipliedAlpha);
         if(!(_loc9_ && param3))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param3 == 1);
         if(!_loc9_)
         {
            §§push(!§§pop());
         }
         var _loc5_:* = §§pop();
         if(!_loc9_)
         {
            if(this.§%6§)
            {
               addr59:
               §§push(§,2§(_loc5_,this.§%6§.mipMapping,this.§%6§.repeat,this.§8M§,this.§7!W§));
               if(!_loc9_)
               {
                  §§push(§§pop());
                  if(_loc8_)
                  {
                     addr86:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr83:
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        §§goto(addr86);
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(!(_loc9_ && param1))
                  {
                     §@>§.§?!I§(param1,_loc4_);
                     while(true)
                     {
                        this.§%d§(param1);
                     }
                     addr244:
                  }
                  loop1:
                  while(true)
                  {
                     param1.setProgram(§<!?§.§,=§.§"u§(_loc6_));
                     loop2:
                     while(true)
                     {
                        param1.setVertexBufferAt(0,this.§^!p§,§'!w§.§9!C§,Context3DVertexBufferFormat.FLOAT_3);
                        if(!(_loc9_ && param1))
                        {
                           if(_loc9_)
                           {
                              continue;
                           }
                           §§push(this.§%6§);
                           if(_loc8_ || param2)
                           {
                              §§push(null);
                              if(_loc8_ || param1)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc8_ || param2)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             §§pop();
                                             if(!(_loc9_ && param2))
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(this.§7!W§);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc8_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  param1.setVertexBufferAt(2,this.§1!&§,§'!w§.§2Q§,Context3DVertexBufferFormat.FLOAT_4);
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     addr96:
                                                                     param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                                     if(_loc8_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§push(_loc5_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    §%=§[0] = §%=§[1] = §%=§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §%=§[3] = param3;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§%=§,1);
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          addr448:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§%6§);
                                                                                             addr450:
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   param1.setTextureAt(0,null);
                                                                                                }
                                                                                                addr451:
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.setTextureAt(0,this.§%6§.getBase(param1));
                                                                                                   addr458:
                                                                                                   loop16:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.setVertexBufferAt(1,this.§#-§,§'!w§.§<h§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                                         addr446:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            break loop16;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.drawTriangles(this.§else§,0,this.§`7§ * 2);
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§%6§);
                                                                                                         addr397:
                                                                                                         addr349:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  break;
                                                                                                                  addr400:
                                                                                                               }
                                                                                                               loop14:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.setTextureAt(0,null);
                                                                                                                  addr404:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        param1.setVertexBufferAt(1,null);
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§%6§);
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(null);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  addr356:
                                                                                                                  loop7:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     addr357:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           break loop3;
                                                                                                                        }
                                                                                                                        loop10:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr325:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          param1.setVertexBufferAt(2,null);
                                                                                                                                          addr334:
                                                                                                                                          loop11:
                                                                                                                                          while(!(_loc9_ && param2))
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ && param3))
                                                                                                                                             {
                                                                                                                                                break loop2;
                                                                                                                                             }
                                                                                                                                             addr425:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                param1.setVertexBufferAt(0,null);
                                                                                                                                                if(!(_loc8_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop11;
                                                                                                                                                }
                                                                                                                                                if(!(_loc8_ || this))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ || param3))
                                                                                                                                                      {
                                                                                                                                                         continue loop23;
                                                                                                                                                      }
                                                                                                                                                      §§push(this.§7!W§);
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         addr314:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc8_ || param2))
                                                                                                                                                         {
                                                                                                                                                            break loop3;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop10;
                                                                                                                                                         }
                                                                                                                                                         continue loop7;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop23;
                                                                                                                                                   addr359:
                                                                                                                                                }
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   return;
                                                                                                                                                }
                                                                                                                                                §§goto(addr446);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr372);
                                                                                                                                       }
                                                                                                                                       addr330:
                                                                                                                                    }
                                                                                                                                    §§goto(addr404);
                                                                                                                                 }
                                                                                                                                 §§goto(addr334);
                                                                                                                              }
                                                                                                                              §§goto(addr287);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr355:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr397);
                                                                                                            }
                                                                                                            §§goto(addr400);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr425);
                                                                              }
                                                                              §§goto(addr448);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr244);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr451);
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr96);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr349);
                                                            §§goto(addr386);
                                                         }
                                                         addr123:
                                                      }
                                                      break;
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§goto(addr359);
                                                   §§goto(addr315);
                                                }
                                             }
                                             §§goto(addr460);
                                          }
                                          §§goto(addr325);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr357);
                                 }
                                 §§goto(addr356);
                              }
                              §§goto(addr355);
                           }
                           §§goto(addr450);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr287);
                     }
                  }
               }
            }
            else
            {
               §§push(§%L§(_loc5_));
               if(!_loc9_)
               {
                  §§goto(addr83);
               }
            }
            §§goto(addr86);
         }
         §§goto(addr59);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`7§ = 0;
            loop0:
            do
            {
               this.§7!W§ = false;
               while(true)
               {
                  this.§%6§ = null;
                  while(!_loc2_)
                  {
                     this.§8M§ = null;
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §>$§(param1:§ O§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(§§pop() * param1.alpha);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     param2 = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(param2);
                        loop4:
                        for(; _loc9_ || param1; while(!(_loc10_ && param2))
                        {
                           continue loop0;
                        })
                        {
                           §§push(0);
                           loop5:
                           while(§§pop() != §§pop())
                           {
                              addr169:
                              while(true)
                              {
                                 §§push(this.§`7§);
                                 if(_loc10_)
                                 {
                                    §§goto(addr245);
                                 }
                                 §§push(1);
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    continue loop4;
                                 }
                              }
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop() / 4);
                                 if(!(_loc9_ || param2))
                                 {
                                    break;
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    while(!(_loc10_ && param2))
                                    {
                                       this.§'k§();
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop3;
                                    addr203:
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    §§push(this.§`7§);
                                    if(_loc9_ || param3)
                                    {
                                       §§push(0);
                                       if(_loc9_ || this)
                                       {
                                          if(_loc9_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   this.§%6§ = param3;
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§8M§ = param4;
                                                            loop16:
                                                            for(; !_loc10_; if(!(_loc9_ || param1))
                                                            {
                                                               continue;
                                                            },§§push(param1.useColor),if(!_loc10_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            },if(!(_loc10_ && param3))
                                                            {
                                                               §§goto(addr32);
                                                            },§§goto(addr88))
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  break loop5;
                                                               }
                                                               §§push(this.§[!K§);
                                                               if(!_loc10_)
                                                               {
                                                                  if(param3)
                                                                  {
                                                                     addr106:
                                                                     §§push(param3.premultipliedAlpha);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc10_ && param1)
                                                                        {
                                                                        }
                                                                        addr120:
                                                                        §§pop().§&!O§(§§pop(),false);
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(param2);
                                                                              if(!(_loc10_ && param2))
                                                                              {
                                                                                 if(!(_loc9_ || param3))
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§push(1);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          do
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc9_ || param2)
                                                                                                {
                                                                                                   if(!(_loc9_ || param1))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                         §§goto(addr88);
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                      addr89:
                                                                                                   }
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   this.§7!W§ = true;
                                                                                                }
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   break loop14;
                                                                                                }
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      addr233:
                                                                                                      §§push(this.§`7§);
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         addr243:
                                                                                                         §§push(§§pop() * 4);
                                                                                                         break loop18;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr233:
                                                                                                   }
                                                                                                   continue loop18;
                                                                                                   break loop12;
                                                                                                }
                                                                                                §§goto(addr169);
                                                                                             }
                                                                                             §§goto(addr233);
                                                                                          }
                                                                                          while(_loc9_);
                                                                                          
                                                                                          continue;
                                                                                       }
                                                                                       addr88:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                       }
                                                                                       addr88:
                                                                                       §§goto(addr89);
                                                                                    }
                                                                                    §§goto(addr88);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           break loop12;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(true);
                                                                  }
                                                                  §§goto(addr120);
                                                               }
                                                               §§goto(addr106);
                                                            }
                                                            continue loop13;
                                                         }
                                                         addr168:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr203);
                                                      }
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr243);
                                    }
                                    break;
                                 }
                                 addr245:
                                 var _loc6_:* = §§pop();
                                 if(_loc9_)
                                 {
                                    param1.copyVertexDataTo(this.§[!K§,_loc6_,param2,param5);
                                    if(_loc9_)
                                    {
                                       var _loc7_:*;
                                       §§push((_loc7_ = this).§`7§);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc8_:* = §§pop();
                                       if(_loc9_ || param1)
                                       {
                                          _loc7_.§`7§ = _loc8_;
                                       }
                                    }
                                 }
                                 return;
                              }
                           }
                           return;
                        }
                        continue loop2;
                     }
                  }
               }
               if(!(_loc9_ || this))
               {
                  continue;
               }
               §§goto(addr193);
               §§push(this.§[!K§.§52§);
            }
         }
         §§goto(addr168);
      }
      
      public function get(param1:§ O§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§%6§);
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
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr421:
                                 while(true)
                                 {
                                    §§push(param2 == null);
                                    addr392:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              addr420:
                           }
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§%6§);
                                       if(_loc5_ || param1)
                                       {
                                          §§push(null);
                                          if(_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          loop11:
                                          while(_loc5_ || param1)
                                          {
                                             §§push(§§pop());
                                             loop12:
                                             while(!(_loc6_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         §§pop();
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(param2 == null);
                                                            addr162:
                                                            while(true)
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§`7§);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§push(!§§pop());
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   §§push(this.§7!W§);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!(_loc5_ || this))
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      §§goto(addr287);
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(param1.useColor);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr43:
                                                                                                                  if(!(_loc6_ && param2))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     addr116:
                                                                                                                     addr116:
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr118);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     loop26:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              break loop19;
                                                                                                                           }
                                                                                                                           addr269:
                                                                                                                           return §§pop();
                                                                                                                           addr328:
                                                                                                                        }
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr412:
                                                                                                                              §§push(this.§%6§);
                                                                                                                              break loop10;
                                                                                                                              addr412:
                                                                                                                           }
                                                                                                                           §§push(this.§8M§ == param3);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           §§goto(addr420);
                                                                                                                        }
                                                                                                                        §§goto(addr421);
                                                                                                                        addr372:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr373:
                                                                                                                  }
                                                                                                                  §§goto(addr392);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr86:
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr91:
                                                                                                                     §§push(§§pop() == !§§pop());
                                                                                                                     if(!(_loc6_ && param3))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§goto(addr116);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr304:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr308:
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(this.§`7§);
                                                                                                                                 break loop17;
                                                                                                                              }
                                                                                                                              §§goto(addr375);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 break loop30;
                                                                                                                              }
                                                                                                                              addr370:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr372);
                                                                                                                        }
                                                                                                                        addr371:
                                                                                                                        addr305:
                                                                                                                     }
                                                                                                                     §§goto(addr269);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr269);
                                                                                                            }
                                                                                                            §§goto(addr91);
                                                                                                         }
                                                                                                         §§goto(addr43);
                                                                                                      }
                                                                                                      §§goto(addr316);
                                                                                                   }
                                                                                                   addr295:
                                                                                                   if(!(_loc6_ && param2))
                                                                                                   {
                                                                                                      addr302:
                                                                                                      §§goto(addr304);
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   §§goto(addr372);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         addr208:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr395:
                                                                                                         §§push(this.§%6§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().root == param2.root);
                                                                                                            addr401:
                                                                                                            while(!(_loc6_ && param3))
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               break loop13;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         addr397:
                                                                                                      }
                                                                                                   }
                                                                                                   addr332:
                                                                                                   if(_loc5_ || param3)
                                                                                                   {
                                                                                                      addr277:
                                                                                                      §§push(this.§7!W§);
                                                                                                      §§push(param1.useColor);
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         addr287:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            §§goto(addr295);
                                                                                                            §§push(!§§pop());
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            §§goto(addr332);
                                                                                                            §§goto(addr287);
                                                                                                         }
                                                                                                         addr331:
                                                                                                      }
                                                                                                      §§goto(addr304);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr421);
                                                                                             }
                                                                                             continue loop14;
                                                                                             addr152:
                                                                                          }
                                                                                          addr118:
                                                                                          return §§pop();
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§goto(addr331);
                                                                                 }
                                                                                 §§goto(addr302);
                                                                              }
                                                                           }
                                                                           §§goto(addr152);
                                                                        }
                                                                        addr252:
                                                                        §§push(§§pop() == §§pop());
                                                                        break loop11;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr252);
                                                                  §§push(8192);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                      if(_loc6_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr116);
                                                         §§push(!§§pop());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr277);
                                                      }
                                                      §§goto(addr392);
                                                   }
                                                   §§goto(addr410);
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr162);
                                             }
                                             continue loop4;
                                          }
                                          if(!_loc6_)
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                if(_loc6_ && param2)
                                                {
                                                   §§goto(addr401);
                                                }
                                                §§goto(addr269);
                                             }
                                             §§goto(addr411);
                                          }
                                          §§goto(addr305);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(_loc5_ || param3)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr397);
                                       §§goto(addr412);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr395);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr208);
      }
   }
}
