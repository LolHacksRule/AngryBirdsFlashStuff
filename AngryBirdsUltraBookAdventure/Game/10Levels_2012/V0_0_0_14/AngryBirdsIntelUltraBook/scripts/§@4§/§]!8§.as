package §@4§
{
   import §!!9§.§4!'§;
   import §!!9§.Texture;
   import §#U§.AGALMiniAssembler;
   import §2N§.§,!J§;
   import §9E§.§1!w§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.DisplayObjectContainer;
   import §`5§.§@2§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §]!8§
   {
      
      private static var §8r§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8r§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §;!?§:int;
      
      private var §3G§:Texture;
      
      private var §'!p§:String;
      
      private var §3!^§:§,!J§;
      
      private var §-c§:VertexBuffer3D;
      
      private var §0T§:VertexBuffer3D;
      
      private var §?5§:VertexBuffer3D;
      
      private var §"Z§:Vector.<uint>;
      
      private var §9S§:IndexBuffer3D;
      
      private var §^#§:Boolean = false;
      
      private var §8!'§:Boolean = false;
      
      public function §]!8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            §-!l§();
            loop1:
            while(true)
            {
               this.§3!^§ = new §,!J§(0,true);
               loop2:
               do
               {
                  this.§"Z§ = new Vector.<uint>(0);
                  while(!_loc2_)
                  {
                     this.§;!?§ = 0;
                     while(_loc1_ || this)
                     {
                        continue loop0;
                        this.§4w§();
                        if(_loc1_)
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
               while(_loc2_);
               
               return;
            }
         }
      }
      
      public static function §5!C§(param1:DisplayObjectContainer, param2:Vector.<§]!8§>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §;R§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §;R§(param1:DisplayObject, param2:Vector.<§]!8§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§1!w§ = null;
         var _loc13_:§;!U§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:§]!8§ = null;
         var _loc7_:* = false;
         if(!(_loc17_ && §]!8§))
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() != -1)
               {
                  §§push(param1.alpha == 0);
                  if(_loc18_ || §]!8§)
                  {
                     if(_loc18_ || §]!8§)
                     {
                        if(!§§pop())
                        {
                           if(_loc18_ || param2)
                           {
                              §§pop();
                              loop1:
                              while(true)
                              {
                                 §§push(param1.visible);
                                 if(_loc18_ || param1)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc17_ && §]!8§))
                                    {
                                       while(true)
                                       {
                                       }
                                       addr73:
                                    }
                                    addr189:
                                    if(§§pop())
                                    {
                                       addr190:
                                       §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                                       if(!(_loc17_ && §]!8§))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       _loc9_ = §§pop();
                                       _loc10_ = new Matrix3D();
                                       if(!(_loc17_ && param3))
                                       {
                                          §§push(param5);
                                          if(!_loc17_)
                                          {
                                             §§push(§§pop() * param1.alpha);
                                             if(_loc18_ || param2)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          param5 = §§pop();
                                          if(!_loc17_)
                                          {
                                             _loc6_ = 0;
                                          }
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc18_ || param3)
                                          {
                                             §§push(_loc9_);
                                             if(!_loc17_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc18_)
                                                   {
                                                      addr440:
                                                      §§push(_loc7_);
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr531:
                                                            if(!(_loc17_ && §]!8§))
                                                            {
                                                               §§push(int(param2.length - 1));
                                                               if(_loc18_ || param1)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr515:
                                                                  if(_loc18_ || §]!8§)
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr480:
                                                                           if(_loc18_ || param1)
                                                                           {
                                                                              break loop9;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              addr524:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 addr525:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr523:
                                                                        }
                                                                        §§goto(addr516);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr516:
                                                                     while(_loc17_)
                                                                     {
                                                                        §§goto(addr524);
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  addr515:
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr523);
                                                            }
                                                            addr531:
                                                         }
                                                         §§goto(addr515);
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr531);
                                                      }
                                                      addr530:
                                                   }
                                                   §§goto(addr525);
                                                }
                                                else
                                                {
                                                   _loc11_ = _loc8_.getChildAt(_loc6_);
                                                   if(_loc18_ || param1)
                                                   {
                                                      _loc10_.copyFrom(param4);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc11_.§>l§(_loc10_);
                                                      loop11:
                                                      while(!_loc17_)
                                                      {
                                                         do
                                                         {
                                                            §§push(§;R§(_loc11_,param2,param3,_loc10_,param5));
                                                            if(!(_loc17_ && param2))
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                            param3 = §§pop();
                                                            do
                                                            {
                                                               _loc6_++;
                                                            }
                                                            while(_loc17_ && param2);
                                                            
                                                            if(_loc18_ || param2)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop11;
                                                         }
                                                         while(false);
                                                         
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                             addr488:
                                             if(§§pop() <= §§pop())
                                             {
                                                if(!(_loc17_ && param1))
                                                {
                                                   if(!_loc17_)
                                                   {
                                                      if(_loc18_ || param2)
                                                      {
                                                         §§goto(addr515);
                                                      }
                                                      §§goto(addr530);
                                                      §§push(delete param2[_loc6_]);
                                                      addr538:
                                                   }
                                                   §§goto(addr531);
                                                }
                                                §§goto(addr525);
                                             }
                                             param2[_loc6_].dispose();
                                             §§goto(addr538);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr488);
                                          §§goto(addr480);
                                       }
                                    }
                                    else
                                    {
                                       if(!(param1 is §1!w§))
                                       {
                                          throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                                       }
                                       if(_loc18_)
                                       {
                                          _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §1!w§) as §;!U§) ? _loc13_.texture : null;
                                          if(_loc18_ || param2)
                                          {
                                             if(_loc13_)
                                             {
                                                if(_loc18_ || param1)
                                                {
                                                   addr365:
                                                   §§push(_loc13_.smoothing);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc17_)
                                                      {
                                                      }
                                                      addr378:
                                                      _loc15_ = §§pop();
                                                      if((_loc16_ = param2[param3]).§"G§(_loc12_,_loc14_,_loc15_))
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            param3++;
                                                            if(!(_loc17_ && param2))
                                                            {
                                                               if(param2.length <= param3)
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     param2.push(new §]!8§());
                                                                     if(_loc17_ && param3)
                                                                     {
                                                                     }
                                                                     addr431:
                                                                     §§goto(addr440);
                                                                  }
                                                                  §§goto(addr431);
                                                               }
                                                               (_loc16_ = param2[param3]).reset();
                                                               addr424:
                                                               _loc16_.§+!t§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                            }
                                                         }
                                                         §§goto(addr431);
                                                      }
                                                      §§goto(addr424);
                                                   }
                                                   addr377:
                                                   §§goto(addr378);
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr378);
                                             }
                                             else
                                             {
                                                §§push(null);
                                                if(_loc18_)
                                                {
                                                   §§goto(addr377);
                                                }
                                             }
                                             §§goto(addr378);
                                          }
                                          §§goto(addr365);
                                       }
                                    }
                                    §§goto(addr440);
                                 }
                                 while(§§pop())
                                 {
                                    if(_loc18_)
                                    {
                                       if(_loc17_)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc17_)
                                       {
                                          §§push(param3);
                                          if(_loc18_)
                                          {
                                             break loop0;
                                          }
                                          loop2:
                                          while(true)
                                          {
                                             if(!_loc17_)
                                             {
                                                param3 = §§pop();
                                                if(!(_loc18_ || param3))
                                                {
                                                   break;
                                                }
                                                if(!(_loc17_ && §]!8§))
                                                {
                                                   if(param2.length == 0)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc18_ || param2)
                                                         {
                                                            param2.push(new §]!8§());
                                                            if(_loc18_ || param2)
                                                            {
                                                               addr159:
                                                            }
                                                            break loop2;
                                                         }
                                                         addr183:
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            addr184:
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                      addr141:
                                                   }
                                                   else
                                                   {
                                                      param2[0].reset();
                                                      addr135:
                                                   }
                                                   addr96:
                                                   break loop1;
                                                }
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr141);
                                    }
                                    else
                                    {
                                       if(!(_loc17_ && param1))
                                       {
                                          if(false)
                                          {
                                          }
                                          break loop1;
                                       }
                                       §§goto(addr135);
                                       §§goto(addr96);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr189);
                              §§push(param1 is DisplayObjectContainer);
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr189);
               }
               §§goto(addr183);
            }
            return §§pop();
         }
         §§goto(addr159);
      }
      
      private static function §-!l§() : void
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
         var _loc1_:§,!]§ = §,!]§.§!9§;
         if(!_loc23_)
         {
            if(_loc1_.§'!§(§0=§(true)))
            {
               if(!_loc23_)
               {
                  §§goto(addr54);
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
                     loop3:
                     while(true)
                     {
                        §§push("mov v0, va2       \n");
                        addr177:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr178:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              continue loop1;
                           }
                        }
                        addr149:
                        if(!(_loc24_ || _loc1_))
                        {
                           continue;
                        }
                        §§push("mov oc, ft0       \n");
                        if(_loc24_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc24_)
                           {
                              addr162:
                              loop8:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 while(true)
                                 {
                                    _loc2_.§<!]§(Context3DProgramType.VERTEX,_loc4_);
                                    if(_loc23_)
                                    {
                                       break;
                                    }
                                    if(_loc23_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc24_ || _loc2_))
                                    {
                                       while(true)
                                       {
                                          §§push("mul ft0, v0, fc0  \n");
                                          if(!(_loc24_ || §]!8§))
                                          {
                                             continue loop8;
                                          }
                                          §§goto(addr149);
                                       }
                                       continue loop3;
                                       addr141:
                                    }
                                    if(!_loc24_)
                                    {
                                       continue loop1;
                                    }
                                    addr104:
                                    _loc3_.§<!]§(Context3DProgramType.FRAGMENT,_loc5_);
                                    _loc1_.§2+§(§0=§(_loc6_),_loc2_.§?!7§,_loc3_.§?!7§);
                                    addr110:
                                    if(!(_loc24_ || _loc2_))
                                    {
                                       break;
                                    }
                                    if(_loc24_ || §]!8§)
                                    {
                                       if(_loc23_ && §]!8§)
                                       {
                                          continue loop2;
                                       }
                                       if(false)
                                       {
                                          §§goto(addr104);
                                       }
                                       var _loc15_:int = 0;
                                       if(!_loc23_)
                                       {
                                          var _loc16_:* = [true,false];
                                          if(_loc24_)
                                          {
                                             addr662:
                                             if(§§hasnext(_loc16_,_loc15_))
                                             {
                                                addr398:
                                                _loc7_ = §§nextvalue(_loc15_,_loc16_);
                                                addr400:
                                                if(_loc7_)
                                                {
                                                   addr406:
                                                   §§push("m44 op, va0, vc0  \n" + "mov v0, va1 \n" + "mov v1, va2       \n");
                                                   if(!_loc23_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr414:
                                                      §§push(_loc7_);
                                                      if(_loc24_)
                                                      {
                                                         if(!(_loc23_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc23_)
                                                               {
                                                                  addr355:
                                                                  §§push(_loc6_);
                                                                  if(_loc24_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr358:
                                                                        §§push("tex ft1, v0, fs0 <???>  \n");
                                                                        if(!(_loc23_ && _loc1_))
                                                                        {
                                                                           addr367:
                                                                           §§push("mul ft1, ft1, v1        \n");
                                                                           if(_loc24_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc24_ || _loc2_)
                                                                              {
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    addr387:
                                                                                    §§push(§§pop() + "mul oc, ft1, fc0        \n");
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr200:
                                                                                       _loc2_.§<!]§(Context3DProgramType.VERTEX,_loc4_);
                                                                                       addr219:
                                                                                       addr391:
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             if(!(_loc23_ && _loc1_))
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr219);
                                                                                                }
                                                                                                addr417:
                                                                                                _loc8_ = [§4!'§.NONE,§4!'§.§5!'§,§4!'§.§<,§];
                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                {
                                                                                                   var _loc17_:int = 0;
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      var _loc18_:* = [true,false];
                                                                                                      if(_loc24_ || _loc1_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr658:
                                                                                                      for each(_loc9_ in _loc18_)
                                                                                                      {
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            var _loc19_:int = 0;
                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                            {
                                                                                                               var _loc20_:* = [true,false];
                                                                                                               if(_loc24_ || _loc1_)
                                                                                                               {
                                                                                                                  addr654:
                                                                                                                  for each(_loc10_ in _loc20_)
                                                                                                                  {
                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr491:
                                                                                                                        var _loc21_:int = 0;
                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                        {
                                                                                                                           var _loc22_:* = _loc8_;
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              addr650:
                                                                                                                              for each(_loc11_ in _loc22_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr653:
                                                                                                                              §§goto(addr654);
                                                                                                                           }
                                                                                                                           §§push("2d");
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 addr517:
                                                                                                                                 §§push("repeat");
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    addr524:
                                                                                                                                    _loc12_ = null;
                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr626:
                                                                                                                                       addr624:
                                                                                                                                       if(_loc11_ == §4!'§.NONE)
                                                                                                                                       {
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             §§push("nearest");
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                addr648:
                                                                                                                                                §§pop().push(§§pop(),"mipnearest");
                                                                                                                                                addr555:
                                                                                                                                                _loc3_.§<!]§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                                                                                                                                                addr649:
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      _loc1_.§2+§(§7!?§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§?!7§,_loc3_.§?!7§);
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr555);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr650);
                                                                                                                                                         }
                                                                                                                                                         addr583:
                                                                                                                                                         if(_loc24_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr590:
                                                                                                                                                            §§goto(addr555);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr649);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr555);
                                                                                                                                                   }
                                                                                                                                                   addr612:
                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                   §§push("linear");
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr621:
                                                                                                                                                      §§pop().push(§§pop(),"mipnearest");
                                                                                                                                                      §§goto(addr555);
                                                                                                                                                      addr622:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr621);
                                                                                                                                                   §§push("mipnone");
                                                                                                                                                }
                                                                                                                                                §§goto(addr622);
                                                                                                                                             }
                                                                                                                                             §§goto(addr648);
                                                                                                                                             §§push("mipnone");
                                                                                                                                          }
                                                                                                                                          §§goto(addr648);
                                                                                                                                       }
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§4!'§.§5!'§);
                                                                                                                                          if(!(_loc23_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr612);
                                                                                                                                             }
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             §§push("linear");
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                addr582:
                                                                                                                                                §§pop().push(§§pop(),"miplinear");
                                                                                                                                                §§goto(addr583);
                                                                                                                                             }
                                                                                                                                             §§goto(addr582);
                                                                                                                                             §§push("mipnone");
                                                                                                                                          }
                                                                                                                                          §§goto(addr626);
                                                                                                                                       }
                                                                                                                                       §§goto(addr624);
                                                                                                                                    }
                                                                                                                                    §§goto(addr590);
                                                                                                                                 }
                                                                                                                                 addr523:
                                                                                                                                 §§goto(addr524);
                                                                                                                                 §§push(§§pop());
                                                                                                                              }
                                                                                                                              §§goto(addr523);
                                                                                                                              §§push("clamp");
                                                                                                                           }
                                                                                                                           §§goto(addr517);
                                                                                                                        }
                                                                                                                        §§goto(addr653);
                                                                                                                     }
                                                                                                                     §§goto(addr654);
                                                                                                                  }
                                                                                                                  addr657:
                                                                                                                  §§goto(addr658);
                                                                                                               }
                                                                                                               §§goto(addr491);
                                                                                                            }
                                                                                                            §§goto(addr657);
                                                                                                         }
                                                                                                         §§goto(addr658);
                                                                                                      }
                                                                                                      addr661:
                                                                                                      §§goto(addr662);
                                                                                                   }
                                                                                                   §§goto(addr661);
                                                                                                }
                                                                                                §§goto(addr662);
                                                                                             }
                                                                                             §§goto(addr414);
                                                                                          }
                                                                                          addr226:
                                                                                          if(_loc24_ || _loc2_)
                                                                                          {
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                §§push("tex ft1, v0, fs0 <???>  \n");
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   if(!(_loc23_ && _loc2_))
                                                                                                   {
                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               §§push("mul oc, ft1, fc0        \n");
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  if(!(_loc23_ && §]!8§))
                                                                                                                  {
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        addr331:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc23_ && _loc1_))
                                                                                                                        {
                                                                                                                           if(_loc24_ || _loc1_)
                                                                                                                           {
                                                                                                                              addr333:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 addr337:
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr200);
                                                                                                                                 }
                                                                                                                                 §§goto(addr391);
                                                                                                                              }
                                                                                                                              §§goto(addr417);
                                                                                                                           }
                                                                                                                           addr386:
                                                                                                                           §§goto(addr387);
                                                                                                                           §§push(§§pop() + "mov oc, ft1 \n");
                                                                                                                        }
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           §§goto(addr333);
                                                                                                                        }
                                                                                                                        §§goto(addr406);
                                                                                                                     }
                                                                                                                     §§goto(addr367);
                                                                                                                  }
                                                                                                                  §§goto(addr386);
                                                                                                               }
                                                                                                               addr297:
                                                                                                               if(_loc24_ || §]!8§)
                                                                                                               {
                                                                                                                  if(!(_loc23_ && §]!8§))
                                                                                                                  {
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        if(_loc24_ || §]!8§)
                                                                                                                        {
                                                                                                                           §§goto(addr331);
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr406);
                                                                                                                     }
                                                                                                                     addr409:
                                                                                                                     §§goto(addr406);
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                                  §§goto(addr387);
                                                                                                               }
                                                                                                               addr384:
                                                                                                               §§goto(addr386);
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr406);
                                                                                                      }
                                                                                                      addr408:
                                                                                                      §§goto(addr409);
                                                                                                      §§push("mov v0, va1 \n");
                                                                                                   }
                                                                                                   §§goto(addr387);
                                                                                                }
                                                                                                §§goto(addr331);
                                                                                             }
                                                                                             §§goto(addr406);
                                                                                          }
                                                                                          §§goto(addr358);
                                                                                       }
                                                                                       §§goto(addr337);
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 §§goto(addr406);
                                                                              }
                                                                              addr383:
                                                                              §§goto(addr384);
                                                                              §§push("mul ft1, ft1, v1        \n");
                                                                           }
                                                                           §§goto(addr406);
                                                                        }
                                                                        §§goto(addr387);
                                                                     }
                                                                     §§goto(addr383);
                                                                     §§push("tex ft1, v0, fs0 <???>  \n");
                                                                  }
                                                                  §§goto(addr400);
                                                               }
                                                               §§goto(addr358);
                                                            }
                                                            §§push(_loc6_);
                                                            if(_loc24_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr226);
                                                               }
                                                               §§push("tex ft1, v0, fs0 <???>  \n");
                                                               if(_loc24_)
                                                               {
                                                                  if(_loc24_ || _loc1_)
                                                                  {
                                                                     if(!_loc23_)
                                                                     {
                                                                        §§goto(addr297);
                                                                        §§push("mov oc, ft1 \n");
                                                                     }
                                                                     §§goto(addr387);
                                                                  }
                                                                  §§goto(addr383);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr355);
                                                         }
                                                         §§goto(addr398);
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                   §§goto(addr417);
                                                }
                                                §§goto(addr408);
                                                §§push("m44 op, va0, vc0  \n");
                                             }
                                             break;
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr662);
                                    }
                                    §§goto(addr110);
                                 }
                                 continue loop0;
                              }
                              addr171:
                           }
                           while(!(_loc23_ && _loc2_))
                           {
                              §§goto(addr171);
                           }
                           §§goto(addr178);
                           addr164:
                        }
                        §§goto(addr177);
                     }
                  }
               }
            }
            return;
         }
         addr54:
      }
      
      public static function §0=§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1)
            {
               addr26:
               §§push("QB_q*");
               if(_loc2_)
               {
               }
            }
            else
            {
               return "QB_q\'";
            }
            return §§pop();
         }
         §§goto(addr26);
      }
      
      public static function §7!?§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            if(param1)
            {
               addr26:
               §§push("QB_i*");
               if(_loc7_ && param1)
               {
               }
            }
            else
            {
               §§push("QB_i\'");
            }
            var _loc6_:* = §§pop();
            if(_loc8_ || §]!8§)
            {
               §§push(param2);
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        addr183:
                        while(true)
                        {
                           §§push("N");
                           addr184:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr185:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr186:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr182:
                  }
                  while(true)
                  {
                     §§push(param3);
                     loop7:
                     for(; !_loc7_; while(true)
                     {
                        §§push(param5);
                        if(!(_loc8_ || param2))
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           §§goto(addr122);
                        }
                        §§goto(addr71);
                        §§goto(addr179);
                     })
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        loop8:
                        while(_loc8_)
                        {
                           §§push(_loc6_);
                           while(true)
                           {
                              §§push("R");
                              while(_loc8_ || §]!8§)
                              {
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    addr179:
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                    addr139:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc8_ || param3))
                                    {
                                       continue;
                                    }
                                    if(!_loc7_)
                                    {
                                       _loc6_ = §§pop();
                                       while(true)
                                       {
                                          addr71:
                                          loop16:
                                          while(true)
                                          {
                                             §§push(param4);
                                             while(true)
                                             {
                                                §§push(§4!'§.§5!'§);
                                                if(_loc8_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc8_ || param1)
                                                      {
                                                         addr95:
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(_loc6_);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(param4);
                                                               addr104:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop().charAt(0));
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     addr109:
                                                                     while(!_loc7_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           continue loop22;
                                                                        }
                                                                        continue loop22;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(!(_loc7_ && param2))
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr134);
                                                                  §§push(_loc6_);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr95);
                                                            }
                                                            §§goto(addr179);
                                                            addr122:
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      §§goto(addr109);
                                                   }
                                                   §§goto(addr46);
                                                }
                                                §§goto(addr104);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr185);
                                 }
                              }
                              §§goto(addr184);
                           }
                        }
                        §§goto(addr186);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr179);
         }
         §§goto(addr26);
      }
      
      public function get §1;§() : int
      {
         return this.§;!?§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§-c§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§-c§.dispose();
               }
               while(true)
               {
               }
               addr112:
            }
            loop1:
            while(true)
            {
               if(this.§0T§)
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.§0T§.dispose();
                  }
                  while(true)
                  {
                     addr53:
                     if(!(_loc2_ && this))
                     {
                        this.§9S§.dispose();
                        addr63:
                        if(_loc1_)
                        {
                           §§goto(addr24);
                        }
                        continue loop1;
                     }
                  }
                  addr98:
               }
               while(true)
               {
                  if(this.§?5§)
                  {
                     addr70:
                     while(true)
                     {
                        this.§?5§.dispose();
                        addr83:
                        while(true)
                        {
                        }
                     }
                     addr70:
                  }
                  for(; this.§9S§; §§goto(addr83))
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           §§goto(addr53);
                        }
                        else
                        {
                           §§goto(addr70);
                        }
                     }
                     §§goto(addr63);
                  }
                  addr24:
                  return;
                  §§goto(addr98);
               }
            }
         }
         §§goto(addr70);
      }
      
      private function §4w§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§3!^§.§8!w§);
         if(_loc5_ || _loc1_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc2_))
            {
               §§push(0);
               if(_loc5_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr46:
                     §§push(16);
                     if(!_loc4_)
                     {
                        addr68:
                        §§push(int(§§pop()));
                     }
                     else
                     {
                        addr58:
                        §§push(int(§§pop() * 2));
                        if(!(_loc4_ && _loc1_))
                        {
                           §§goto(addr68);
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(_loc5_ || _loc1_)
                     {
                        §§goto(addr58);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     this.§3!^§.§8!w§ = _loc2_ * 4;
                  }
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  loop0:
                  while(true)
                  {
                     if(_loc3_ >= _loc2_)
                     {
                        if(!_loc4_)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              this.§8!'§ = true;
                              addr114:
                              if(_loc5_)
                              {
                                 if(_loc5_ || _loc1_)
                                 {
                                    break;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    this.§"Z§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                    addr157:
                                    loop1:
                                    while(true)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          _loc3_++;
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   break loop1;
                                                }
                                                loop2:
                                                while(true)
                                                {
                                                   this.§"Z§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                                                   addr263:
                                                   while(true)
                                                   {
                                                      this.§"Z§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             while(_loc4_ && this)
                                             {
                                                §§goto(addr263);
                                             }
                                             this.§"Z§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                          }
                                          addr136:
                                       }
                                       this.§"Z§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr114);
                     }
                     else
                     {
                        this.§"Z§[int(_loc3_ * 6)] = _loc3_ * 4;
                     }
                     §§goto(addr263);
                  }
                  return;
               }
            }
            §§goto(addr58);
         }
         §§goto(addr46);
      }
      
      private function §3H§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§8!'§);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     if(param1 != null)
                     {
                        loop1:
                        while(this.§-c§)
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc4_ && _loc2_)
                              {
                                 break loop0;
                              }
                              this.§-c§.dispose();
                           }
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 break loop1;
                              }
                              break;
                              loop6:
                              while(_loc3_ || param1)
                              {
                                 this.§?5§.dispose();
                                 loop7:
                                 while(true)
                                 {
                                    addr24:
                                    addr92:
                                    loop8:
                                    while(true)
                                    {
                                       if(this.§9S§)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr35:
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.§9S§.dispose();
                                                continue loop7;
                                             }
                                             addr82:
                                             while(true)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   this.§0T§.dispose();
                                                   break loop8;
                                                }
                                                break;
                                                §§goto(addr35);
                                             }
                                             continue loop0;
                                          }
                                          continue loop7;
                                       }
                                       addr155:
                                       §§push(this.§3!^§.§8!w§);
                                       if(!_loc4_)
                                       {
                                          §§push(int(§§pop() / 4));
                                       }
                                       var _loc2_:* = §§pop();
                                       if(_loc3_ || param1)
                                       {
                                          this.§-c§ = param1.createVertexBuffer(_loc2_ * 4,§,!J§.§#8§);
                                          this.§-c§.uploadFromByteArray(this.§3!^§.§!]§,0,0,_loc2_ * 4);
                                          this.§0T§ = param1.createVertexBuffer(_loc2_ * 4,§,!J§.§&g§);
                                          this.§0T§.uploadFromVector(this.§3!^§.§0<§,0,_loc2_ * 4);
                                          this.§?5§ = param1.createVertexBuffer(_loc2_ * 4,§,!J§.§<!a§);
                                          this.§?5§.uploadFromVector(this.§3!^§.§94§,0,_loc2_ * 4);
                                          addr260:
                                          addr316:
                                          addr306:
                                          addr293:
                                          if(!(_loc4_ && this))
                                          {
                                             this.§9S§ = param1.createIndexBuffer(_loc2_ * 6);
                                             addr214:
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      this.§9S§.uploadFromVector(this.§"Z§,0,_loc2_ * 6);
                                                      this.§8!'§ = false;
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr260);
                                                               }
                                                               return true;
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      addr205:
                                                      §§goto(addr205);
                                                   }
                                                   §§goto(addr316);
                                                }
                                                §§goto(addr306);
                                             }
                                             §§goto(addr293);
                                             addr249:
                                          }
                                          addr272:
                                          §§goto(addr272);
                                       }
                                       §§goto(addr249);
                                    }
                                    while(true)
                                    {
                                       addr63:
                                       while(true)
                                       {
                                          if(this.§?5§)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr24);
                                       }
                                    }
                                 }
                              }
                           }
                           throw new §@2§();
                        }
                        while(true)
                        {
                           if(this.§0T§)
                           {
                              §§goto(addr82);
                           }
                           §§goto(addr63);
                        }
                     }
                     §§goto(addr128);
                  }
               }
               return false;
            }
         }
         §§goto(addr128);
      }
      
      private function §^!'§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§3H§(param1));
            loop0:
            for(; !§§pop(); while(true)
            {
               §§push(this.§^#§);
               if(_loc3_ && _loc3_)
               {
                  break;
               }
               if(§§pop())
               {
                  while(true)
                  {
                     this.§0T§.uploadFromVector(this.§3!^§.§0<§,0,this.§;!?§ * 4);
                     addr89:
                     while(_loc2_)
                     {
                        while(true)
                        {
                        }
                     }
                     §§goto(addr96);
                  }
                  addr68:
               }
               while(true)
               {
                  this.§?5§.uploadFromVector(this.§3!^§.§94§,0,this.§;!?§ * 4);
                  if(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr89);
               }
               if(!(_loc3_ && _loc3_))
               {
                  break loop0;
               }
            })
            {
               while(true)
               {
                  this.§-c§.uploadFromByteArray(this.§3!^§.§!]§,0,0,this.§;!?§ * 4);
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr91);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            if(this.§;!?§ == 0)
            {
               if(_loc9_)
               {
                  §§goto(addr25);
               }
            }
            §§push(this.§3!^§.premultipliedAlpha);
            if(_loc9_ || param1)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param3 == 1);
            if(!(_loc8_ && param2))
            {
               §§push(!§§pop());
            }
            var _loc5_:* = §§pop();
            if(!(_loc8_ && param1))
            {
               if(this.§3G§)
               {
                  addr60:
                  §§push(§7!?§(_loc5_,this.§3G§.mipMapping,this.§3G§.repeat,this.§'!p§,this.§^#§));
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        addr92:
                        §§push(§§pop());
                     }
                     else
                     {
                        addr89:
                        §§push(§§pop());
                        if(!_loc8_)
                        {
                           §§goto(addr92);
                        }
                     }
                     var _loc6_:* = §§pop();
                     if(!_loc8_)
                     {
                        §<!I§.§1!6§(param1,_loc4_);
                        if(_loc9_ || param2)
                        {
                           this.§^!'§(param1);
                           if(_loc9_)
                           {
                              param1.setProgram(§,!]§.§!9§.§,g§(_loc6_));
                              if(_loc9_)
                              {
                                 param1.setVertexBufferAt(0,this.§?5§,§,!J§.§'x§,Context3DVertexBufferFormat.FLOAT_3);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(this.§3G§);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(null);
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc8_ && param3))
                                          {
                                             §§push(§§pop());
                                             if(_loc9_ || param1)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      if(_loc9_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§^#§);
                                                            if(!(_loc9_ || this))
                                                            {
                                                               break;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr239:
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_ || param3)
                                                            {
                                                               §8r§[0] = §8r§[1] = §8r§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                               if(!_loc8_)
                                                               {
                                                                  §8r§[3] = param3;
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§8r§,1);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        addr456:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§3G§);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr421:
                                                                                 param1.setTextureAt(0,null);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          param1.drawTriangles(this.§9S§,0,this.§;!?§ * 2);
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§3G§);
                                                                                                loop13:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc8_ && param1))
                                                                                                   {
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                   addr340:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§3G§);
                                                                                                      if(_loc8_ && param2)
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      §§push(null);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         addr352:
                                                                                                         loop20:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr353:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr355:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§^#§);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc9_ || param2)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           param1.setVertexBufferAt(2,null);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && this))
                                                                                                                        {
                                                                                                                           if(_loc9_ || this)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr339:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ || param1))
                                                                                                                                 {
                                                                                                                                    break loop1;
                                                                                                                                 }
                                                                                                                                 if(_loc9_ || param3)
                                                                                                                                 {
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 addr466:
                                                                                                                                 addr466:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    param1.setVertexBufferAt(1,this.§-c§,§,!J§.§,q§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr361:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr355);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr325:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.setVertexBufferAt(0,null);
                                                                                                                     if(_loc8_ && param2)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(_loc9_ || param3)
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  §§goto(addr325);
                                                                                                               }
                                                                                                               addr459:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.setTextureAt(0,this.§3G§.getBase(param1));
                                                                                                                  §§goto(addr466);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr406:
                                                                                    }
                                                                                    addr454:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr406);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr459);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            §§goto(addr466);
                                                         }
                                                         §§goto(addr456);
                                                         addr111:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      param1.setVertexBufferAt(1,null);
                                                      §§goto(addr361);
                                                   }
                                                   addr405:
                                                }
                                                §§goto(addr131);
                                             }
                                             §§goto(addr353);
                                          }
                                          §§goto(addr352);
                                       }
                                       §§goto(addr351);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc9_ || param3)
                                       {
                                          while(true)
                                          {
                                             param1.setTextureAt(0,null);
                                          }
                                          addr401:
                                       }
                                       §§goto(addr405);
                                    }
                                    §§goto(addr340);
                                 }
                              }
                              §§goto(addr355);
                           }
                           §§goto(addr459);
                        }
                        §§goto(addr401);
                     }
                     §§goto(addr355);
                  }
                  §§goto(addr89);
               }
               else
               {
                  §§push(§0=§(_loc5_));
                  if(_loc9_ || this)
                  {
                     §§goto(addr89);
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr60);
         }
         addr25:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§;!?§ = 0;
         }
         loop0:
         do
         {
            this.§^#§ = false;
            while(true)
            {
               this.§3G§ = null;
               while(!_loc2_)
               {
                  this.§'!p§ = null;
                  if(_loc1_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §+!t§(param1:§1!w§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param3))
         {
            §§push(this.§;!?§);
            loop0:
            while(true)
            {
               §§push(1);
               loop1:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc9_ && this))
                  {
                     if(§§pop() > this.§3!^§.§8!w§ / 4)
                     {
                        while(true)
                        {
                           this.§4w§();
                           addr146:
                           while(true)
                           {
                           }
                           loop6:
                           while(_loc10_ || param2)
                           {
                              loop7:
                              while(true)
                              {
                                 this.§'!p§ = param4;
                                 while(true)
                                 {
                                    if(_loc10_)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(_loc10_ || param3)
                                          {
                                             §§push(this.§3!^§);
                                             if(_loc10_ || param1)
                                             {
                                                if(param3)
                                                {
                                                   addr37:
                                                   §§push(param3.premultipliedAlpha);
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc9_ && param1)
                                                      {
                                                      }
                                                      addr56:
                                                      §§pop().setPremultipliedAlpha(§§pop(),false);
                                                      if(!(_loc10_ || param3))
                                                      {
                                                         continue;
                                                      }
                                                      if(false)
                                                      {
                                                         continue loop7;
                                                      }
                                                      addr154:
                                                      addr147:
                                                      §§push(this.§;!?§);
                                                      if(!_loc9_)
                                                      {
                                                         addr152:
                                                         §§push(§§pop() * 4);
                                                         break loop1;
                                                      }
                                                      var _loc6_:* = §§pop();
                                                      if(_loc10_ || param1)
                                                      {
                                                         addr261:
                                                         param2 *= param1.alpha;
                                                         param1.copyVertexDataTo(this.§3!^§,_loc6_,param2,param5);
                                                         addr262:
                                                         addr257:
                                                         addr260:
                                                         if(_loc10_)
                                                         {
                                                            addr211:
                                                            §§push(param2);
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(§§pop() == 1);
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        addr229:
                                                                        §§push(!§§pop());
                                                                        if(!!§§pop())
                                                                        {
                                                                           §§goto(addr231);
                                                                        }
                                                                        §§goto(addr188);
                                                                     }
                                                                     addr231:
                                                                     §§pop();
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(param1.useColor);
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           if(!(_loc9_ && param3))
                                                                           {
                                                                              addr181:
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 addr188:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc9_ && param2))
                                                                                    {
                                                                                       addr197:
                                                                                       this.§^#§ = true;
                                                                                       if(_loc9_ && this)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr211);
                                                                                       }
                                                                                       §§goto(addr263);
                                                                                    }
                                                                                    §§goto(addr262);
                                                                                 }
                                                                                 addr263:
                                                                                 var _loc7_:*;
                                                                                 §§push((_loc7_ = this).§;!?§);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                 }
                                                                                 var _loc8_:* = §§pop();
                                                                                 if(_loc10_ || param2)
                                                                                 {
                                                                                    _loc7_.§;!?§ = _loc8_;
                                                                                 }
                                                                                 §§goto(addr283);
                                                                              }
                                                                              §§goto(addr231);
                                                                           }
                                                                           §§goto(addr229);
                                                                        }
                                                                        §§goto(addr181);
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         addr283:
                                                         return;
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(true);
                                                }
                                                §§goto(addr56);
                                             }
                                             §§goto(addr37);
                                          }
                                          else
                                          {
                                             §§goto(addr146);
                                          }
                                       }
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 addr106:
                                 while(true)
                                 {
                                    this.§3G§ = param3;
                                    continue loop6;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(this.§;!?§);
                        if(!_loc9_)
                        {
                           if(!_loc10_)
                           {
                              continue loop0;
                           }
                           §§push(0);
                           if(_loc10_ || param2)
                           {
                              if(_loc9_ && param2)
                              {
                                 continue loop1;
                              }
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr106);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr152);
                        }
                        break;
                        §§goto(addr146);
                     }
                     §§goto(addr152);
                  }
                  break;
               }
               §§goto(addr154);
            }
         }
         §§goto(addr106);
      }
      
      public function §"G§(param1:§1!w§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §§push(this.§3G§);
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
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr416:
                                 while(true)
                                 {
                                    §§push(param2 == null);
                                    addr387:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              addr415:
                           }
                           while(true)
                           {
                              loop9:
                              while(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§3G§);
                                    if(_loc4_ || param1)
                                    {
                                       if(_loc4_ || param3)
                                       {
                                          §§push(null);
                                          if(!(_loc4_ || param1))
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          loop11:
                                          while(_loc4_ || param2)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(§§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop13:
                                                      while(_loc4_)
                                                      {
                                                         §§pop();
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(param2 == null);
                                                            loop15:
                                                            while(!(_loc5_ && param1))
                                                            {
                                                               if(_loc4_ || param1)
                                                               {
                                                                  loop16:
                                                                  while(!§§pop())
                                                                  {
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§;!?§);
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              loop18:
                                                                              for(; !(_loc5_ && param1); if(_loc5_ && param3)
                                                                              {
                                                                                 continue;
                                                                              },if(_loc4_)
                                                                              {
                                                                                 addr91:
                                                                                 return §§pop();
                                                                              },while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr301:
                                                                                    return §§pop();
                                                                                 }
                                                                                 §§goto(addr415);
                                                                              },addr299:)
                                                                              {
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr91);
                                                                                                   }
                                                                                                   while(_loc4_)
                                                                                                   {
                                                                                                      if(_loc5_ && param3)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      if(_loc5_ && this)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      if(_loc5_ && param2)
                                                                                                      {
                                                                                                         break loop16;
                                                                                                      }
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         §§push(this.§^#§);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop20;
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr70:
                                                                                                         if(_loc4_ || param2)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr80:
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            §§push(!§§pop());
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         addr212:
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(!(_loc5_ && this))
                                                                                                               {
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               addr365:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr367:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              break loop11;
                                                                                                                           }
                                                                                                                           addr347:
                                                                                                                           addr313:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr313:
                                                                                                                           while(!(_loc5_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              while(_loc4_ || this)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    break loop15;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr398:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ && param1)
                                                                                                                                    {
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop33;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr407:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§3G§);
                                                                                                                                          break loop10;
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
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr349:
                                                                                                               while(!_loc5_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§^#§);
                                                                                                                           addr309:
                                                                                                                           addr333:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §§goto(addr313);
                                                                                                                                 §§push(param1.useColor);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr396:
                                                                                                                              }
                                                                                                                              §§goto(addr397);
                                                                                                                           }
                                                                                                                           while(_loc4_ || param3)
                                                                                                                           {
                                                                                                                              §§push(this.§;!?§);
                                                                                                                              break loop17;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr352:
                                                                                                                  }
                                                                                                                  §§goto(addr329);
                                                                                                               }
                                                                                                               §§goto(addr398);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr321);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§'!p§ == param3);
                                                                                                         addr346:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr347);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param2.repeat);
                                                                                                      addr364:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr365);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                break loop18;
                                                                                             }
                                                                                             §§goto(addr301);
                                                                                          }
                                                                                          addr331:
                                                                                       }
                                                                                       §§goto(addr309);
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr333);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr299);
                                                                           }
                                                                           addr298:
                                                                        }
                                                                        break;
                                                                        addr247:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr298);
                                                                     }
                                                                  }
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     §§goto(addr212);
                                                                     §§push(false);
                                                                  }
                                                                  §§goto(addr407);
                                                                  addr202:
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr331);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                   §§goto(addr202);
                                                }
                                             }
                                             §§goto(addr367);
                                          }
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§pop();
                                                §§goto(addr372);
                                             }
                                             §§goto(addr406);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr396);
                                       }
                                       addr392:
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr362);
                                    §§push(§§pop().repeat);
                                 }
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
            §§goto(addr392);
         }
      }
   }
}
