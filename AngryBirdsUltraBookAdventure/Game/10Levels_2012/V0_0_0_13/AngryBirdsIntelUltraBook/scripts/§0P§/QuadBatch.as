package §0P§
{
   import §"v§.§`!M§;
   import §5!G§.AGALMiniAssembler;
   import §6!7§.§-m§;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.DisplayObjectContainer;
   import §7i§.§=!C§;
   import §7i§.Texture;
   import §8g§.VertexData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class QuadBatch
   {
      
      private static var §[!7§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[!7§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §!!P§:int;
      
      private var §5!%§:Texture;
      
      private var §=!i§:String;
      
      private var §;H§:VertexData;
      
      private var §"-§:VertexBuffer3D;
      
      private var §-!^§:VertexBuffer3D;
      
      private var §8!F§:VertexBuffer3D;
      
      private var §9X§:Vector.<uint>;
      
      private var §%!Z§:IndexBuffer3D;
      
      private var §<!K§:Boolean = false;
      
      private var §#!!§:Boolean = false;
      
      public function QuadBatch()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               §&Z§();
               addr95:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            this.§;H§ = new VertexData(0,true);
            loop3:
            while(true)
            {
               this.§9X§ = new Vector.<uint>(0);
               while(true)
               {
                  this.§!!P§ = 0;
                  while(_loc2_ || _loc1_)
                  {
                     continue loop3;
                     this.§>p§();
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        return;
                     }
                     §§goto(addr95);
                  }
               }
            }
         }
      }
      
      public static function §#X§(param1:DisplayObjectContainer, param2:Vector.<QuadBatch>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §,!L§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §,!L§(param1:DisplayObject, param2:Vector.<QuadBatch>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§3x§ = null;
         var _loc13_:§-m§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:QuadBatch = null;
         §§push(false);
         if(!(_loc18_ && param3))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!(_loc18_ && param2))
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() == -1)
               {
                  if(!_loc18_)
                  {
                     addr214:
                     §§push(true);
                     if(!(_loc18_ && QuadBatch))
                     {
                        addr208:
                        _loc7_ = Boolean(§§pop());
                        do
                        {
                           param3 = int(0);
                           if(param2.length != 0)
                           {
                              addr176:
                              param2[0].reset();
                              break;
                           }
                           addr170:
                           param2.push(new QuadBatch());
                        }
                        while(!(_loc17_ || param2));
                        
                        §§push(param1 is DisplayObjectContainer);
                        addr209:
                        addr147:
                     }
                     if(§§pop())
                     {
                        _loc8_ = param1 as DisplayObjectContainer;
                        if(!_loc18_)
                        {
                           §§push(_loc8_.numChildren);
                           if(!_loc18_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc9_ = §§pop();
                        }
                        _loc10_ = new Matrix3D();
                        if(!(_loc18_ && param1))
                        {
                           §§push(param5);
                           if(_loc17_)
                           {
                              §§push(§§pop() * param1.alpha);
                              if(!(_loc18_ && param3))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           param5 = §§pop();
                           if(!_loc18_)
                           {
                              addr257:
                              §§push(0);
                              if(!(_loc18_ && QuadBatch))
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc6_ = §§pop();
                           }
                           loop7:
                           while(true)
                           {
                              §§push(_loc6_);
                              if(!(_loc18_ && QuadBatch))
                              {
                                 §§push(_loc9_);
                                 if(!_loc18_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc11_ = _loc8_.getChildAt(_loc6_);
                                       if(!(_loc18_ && param3))
                                       {
                                          _loc10_.copyFrom(param4);
                                          while(true)
                                          {
                                             _loc11_.§'d§(_loc10_);
                                             addr334:
                                             loop9:
                                             while(true)
                                             {
                                                addr309:
                                                while(true)
                                                {
                                                   §§push(§,!L§(_loc11_,param2,param3,_loc10_,param5));
                                                   if(_loc17_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   addr320:
                                                   while(true)
                                                   {
                                                      param3 = §§pop();
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                          }
                                          addr339:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(!_loc18_)
                                          {
                                             if(_loc17_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(_loc17_)
                                                {
                                                   addr301:
                                                   §§push(int(§§pop()));
                                                }
                                                _loc6_ = §§pop();
                                                if(_loc17_)
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr339);
                                                   }
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr320);
                                          }
                                          §§goto(addr301);
                                       }
                                       continue;
                                    }
                                    if(_loc17_)
                                    {
                                       addr508:
                                       §§push(_loc7_);
                                       if(!_loc18_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc17_)
                                             {
                                                addr514:
                                                §§push(int(param2.length - 1));
                                                if(_loc17_)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(_loc17_ || param1)
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc17_)
                                                         {
                                                            if(!_loc18_)
                                                            {
                                                               if(_loc17_ || param2)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        addr546:
                                                                        if(§§pop() <= param3)
                                                                        {
                                                                           addr596:
                                                                           if(_loc17_ || param3)
                                                                           {
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§goto(addr567);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 addr572:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                    break loop7;
                                                                                 }
                                                                              }
                                                                              addr588:
                                                                           }
                                                                           while(_loc17_ || param2)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(delete param2[_loc6_]);
                                                                              addr587:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr588);
                                                                              }
                                                                           }
                                                                           addr596:
                                                                           addr575:
                                                                        }
                                                                        else
                                                                        {
                                                                           param2[_loc6_].dispose();
                                                                           §§goto(addr596);
                                                                        }
                                                                        §§goto(addr596);
                                                                     }
                                                                     addr545:
                                                                  }
                                                                  §§goto(addr572);
                                                               }
                                                               break loop7;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§goto(addr575);
                                                            }
                                                            addr574:
                                                         }
                                                         §§goto(addr567);
                                                      }
                                                      addr529:
                                                   }
                                                   §§goto(addr596);
                                                }
                                                §§goto(addr545);
                                             }
                                             §§goto(addr529);
                                          }
                                          addr567:
                                          return param3;
                                       }
                                       §§goto(addr587);
                                    }
                                    §§goto(addr514);
                                 }
                                 §§goto(addr546);
                              }
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr574);
                           }
                        }
                        §§goto(addr257);
                     }
                     else
                     {
                        if(!(param1 is §3x§))
                        {
                           throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                        }
                        if(!(_loc18_ && param1))
                        {
                           _loc12_ = param1 as §3x§;
                           _loc13_ = _loc12_ as §-m§;
                           if(!_loc18_)
                           {
                              _loc14_ = Boolean(_loc13_) ? _loc13_.texture : null;
                              if(_loc17_)
                              {
                                 if(_loc13_)
                                 {
                                    addr423:
                                    if(!_loc18_)
                                    {
                                       §§push(_loc13_.smoothing);
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc18_ && param1))
                                          {
                                             addr421:
                                             §§push(§§pop());
                                          }
                                       }
                                    }
                                    _loc16_ = param2[param3];
                                    if(!(_loc18_ && param1))
                                    {
                                       if(_loc16_.§&&§(_loc12_,_loc14_,_loc15_))
                                       {
                                          if(_loc17_)
                                          {
                                             §§push(param3);
                                             if(_loc17_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc18_)
                                                {
                                                   addr449:
                                                   §§push(int(§§pop()));
                                                }
                                                param3 = §§pop();
                                                if(_loc17_ || param2)
                                                {
                                                   if(param2.length <= param3)
                                                   {
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         param2.push(new QuadBatch());
                                                         if(_loc17_ || param2)
                                                         {
                                                            addr481:
                                                            _loc16_ = param2[param3];
                                                            if(!_loc18_)
                                                            {
                                                               _loc16_.reset();
                                                               addr491:
                                                               _loc16_.§<!#§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                               §§goto(addr508);
                                                            }
                                                         }
                                                         §§goto(addr491);
                                                      }
                                                   }
                                                }
                                                §§goto(addr481);
                                             }
                                             §§goto(addr449);
                                          }
                                          §§goto(addr481);
                                       }
                                    }
                                    §§goto(addr491);
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(!(_loc18_ && QuadBatch))
                                    {
                                       §§goto(addr421);
                                    }
                                 }
                                 _loc15_ = §§pop();
                              }
                              §§goto(addr423);
                           }
                           §§goto(addr384);
                        }
                     }
                     §§goto(addr508);
                  }
                  §§goto(addr209);
               }
               else
               {
                  §§push(param1.alpha == 0);
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc17_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              addr161:
                              while(true)
                              {
                                 §§push(param1.visible);
                                 if(_loc17_ || param2)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc18_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 addr85:
                                 if(!_loc17_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc18_)
                                 {
                                    continue loop2;
                                 }
                                 if(!(_loc17_ || param2))
                                 {
                                    §§goto(addr208);
                                 }
                              }
                              §§goto(addr208);
                           }
                        }
                        while(§§pop())
                        {
                           if(_loc17_)
                           {
                              if(!(_loc18_ && param1))
                              {
                                 if(!(_loc18_ && QuadBatch))
                                 {
                                    if(!_loc18_)
                                    {
                                       if(!_loc18_)
                                       {
                                          §§push(param3);
                                          if(!(_loc18_ && param3))
                                          {
                                             if(_loc17_)
                                             {
                                                if(!_loc18_)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr181);
                              }
                              else
                              {
                                 §§goto(addr161);
                              }
                           }
                           else
                           {
                              if(!(_loc18_ && param2))
                              {
                                 if(false)
                                 {
                                 }
                                 break;
                              }
                              §§goto(addr170);
                              §§goto(addr147);
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr208);
                     }
                  }
               }
               §§goto(addr170);
            }
         }
         §§goto(addr214);
      }
      
      private static function §&Z§() : void
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
         var _loc1_:Starling = Starling.§!!F§;
         if(_loc23_)
         {
            if(_loc1_.§8V§(§9!h§(true)))
            {
               if(!_loc24_)
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
                     addr194:
                     while(true)
                     {
                        §§push("mov v0, va2       \n");
                        addr195:
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr196:
                           while(true)
                           {
                              §§push(§§pop());
                              addr197:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           addr191:
                           _loc2_.§#!G§(Context3DProgramType.VERTEX,_loc4_);
                           addr93:
                           _loc3_.§#!G§(Context3DProgramType.FRAGMENT,_loc5_);
                           if(!(_loc23_ || _loc1_))
                           {
                              continue loop0;
                           }
                           if(!(_loc23_ || _loc3_))
                           {
                              continue loop2;
                           }
                           _loc1_.§1_§(§9!h§(_loc6_),_loc2_.§<x§,_loc3_.§<x§);
                           if(_loc24_)
                           {
                              continue loop0;
                           }
                           if(!(_loc24_ && _loc3_))
                           {
                              if(false)
                              {
                                 §§goto(addr93);
                              }
                              var _loc15_:int = 0;
                              if(_loc23_)
                              {
                                 var _loc16_:* = [true,false];
                                 if(!_loc24_)
                                 {
                                    addr746:
                                    if(§§hasnext(_loc16_,_loc15_))
                                    {
                                       addr471:
                                       _loc7_ = §§nextvalue(_loc15_,_loc16_);
                                       addr472:
                                       if(_loc7_)
                                       {
                                          addr442:
                                          §§push("m44 op, va0, vc0  \n" + "mov v0, va1 \n");
                                          §§push("mov v1, va2       \n");
                                          if(!_loc24_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc23_ || _loc3_)
                                             {
                                                addr463:
                                                _loc4_ = §§pop();
                                                addr464:
                                                addr457:
                                                addr462:
                                                §§push(_loc7_);
                                                if(_loc23_ || _loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc24_ && _loc3_))
                                                      {
                                                         if(_loc23_ || QuadBatch)
                                                         {
                                                            addr405:
                                                            if(_loc6_)
                                                            {
                                                               if(_loc23_)
                                                               {
                                                                  addr408:
                                                                  §§push("tex ft1, v0, fs0 <???>  \n");
                                                                  if(!(_loc24_ && _loc2_))
                                                                  {
                                                                     addr461:
                                                                     §§push(§§pop() + "mul ft1, ft1, v1        \n");
                                                                     if(!_loc24_)
                                                                     {
                                                                        addr421:
                                                                        §§push(§§pop() + "mul oc, ft1, fc0        \n");
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc24_)
                                                                           {
                                                                              addr434:
                                                                              §§push(§§pop());
                                                                              if(!_loc24_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 addr219:
                                                                                 _loc2_.§#!G§(Context3DProgramType.VERTEX,_loc4_);
                                                                                 addr247:
                                                                                 addr438:
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       if(_loc23_ || _loc1_)
                                                                                       {
                                                                                          if(_loc23_ || QuadBatch)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr247);
                                                                                             }
                                                                                             addr476:
                                                                                             _loc8_ = [§=!C§.NONE,§=!C§.§1l§,§=!C§.§!!N§];
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                var _loc17_:int = 0;
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   var _loc18_:* = [true,false];
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      addr742:
                                                                                                      for each(_loc9_ in _loc18_)
                                                                                                      {
                                                                                                         if(_loc23_ || _loc1_)
                                                                                                         {
                                                                                                            addr512:
                                                                                                            var _loc19_:int = 0;
                                                                                                            if(_loc23_ || _loc1_)
                                                                                                            {
                                                                                                               var _loc20_:* = [true,false];
                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                               {
                                                                                                                  addr738:
                                                                                                                  for each(_loc10_ in _loc20_)
                                                                                                                  {
                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr547:
                                                                                                                        var _loc21_:int = 0;
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           var _loc22_:* = _loc8_;
                                                                                                                           if(!(_loc24_ && QuadBatch))
                                                                                                                           {
                                                                                                                              addr734:
                                                                                                                              for each(_loc11_ in _loc22_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr737:
                                                                                                                              §§goto(addr738);
                                                                                                                           }
                                                                                                                           §§push("2d");
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 addr573:
                                                                                                                                 §§push("repeat");
                                                                                                                                 if(_loc23_ || QuadBatch)
                                                                                                                                 {
                                                                                                                                    addr585:
                                                                                                                                    _loc12_ = null;
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       addr711:
                                                                                                                                       if(_loc11_ == §=!C§.NONE)
                                                                                                                                       {
                                                                                                                                          addr712:
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          §§push("nearest");
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             addr731:
                                                                                                                                             §§pop().push(§§pop(),"mipnearest");
                                                                                                                                             addr622:
                                                                                                                                             _loc3_.§#!G§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                                                                                                                                             addr733:
                                                                                                                                             if(_loc23_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   _loc1_.§1_§(§&!%§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§<x§,_loc3_.§<x§);
                                                                                                                                                   if(!(_loc24_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc24_ && QuadBatch))
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr622);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr734);
                                                                                                                                                      }
                                                                                                                                                      addr688:
                                                                                                                                                      if(!(_loc24_ && QuadBatch))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         §§push("linear");
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            addr704:
                                                                                                                                                            §§pop().push(§§pop(),"mipnearest");
                                                                                                                                                            §§goto(addr622);
                                                                                                                                                            addr706:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr704);
                                                                                                                                                         §§push("mipnone");
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr733);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr622);
                                                                                                                                                   addr648:
                                                                                                                                                }
                                                                                                                                                §§goto(addr712);
                                                                                                                                             }
                                                                                                                                             if(_loc23_ || QuadBatch)
                                                                                                                                             {
                                                                                                                                                §§goto(addr622);
                                                                                                                                             }
                                                                                                                                             §§goto(addr706);
                                                                                                                                          }
                                                                                                                                          §§goto(addr731);
                                                                                                                                          §§push("mipnone");
                                                                                                                                       }
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(§=!C§.§1l§);
                                                                                                                                          if(!(_loc24_ && QuadBatch))
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr688);
                                                                                                                                             }
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             §§push("linear");
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                addr661:
                                                                                                                                                §§pop().push(§§pop(),"miplinear");
                                                                                                                                                §§goto(addr731);
                                                                                                                                             }
                                                                                                                                             §§goto(addr661);
                                                                                                                                             §§push("mipnone");
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr711);
                                                                                                                                    }
                                                                                                                                    §§goto(addr648);
                                                                                                                                 }
                                                                                                                                 addr584:
                                                                                                                                 §§goto(addr585);
                                                                                                                                 §§push(§§pop());
                                                                                                                              }
                                                                                                                              §§goto(addr584);
                                                                                                                              §§push("clamp");
                                                                                                                           }
                                                                                                                           §§goto(addr573);
                                                                                                                        }
                                                                                                                        §§goto(addr737);
                                                                                                                     }
                                                                                                                     §§goto(addr738);
                                                                                                                  }
                                                                                                                  addr741:
                                                                                                                  §§goto(addr742);
                                                                                                               }
                                                                                                               §§goto(addr547);
                                                                                                            }
                                                                                                            §§goto(addr741);
                                                                                                         }
                                                                                                         §§goto(addr742);
                                                                                                      }
                                                                                                      addr745:
                                                                                                      §§goto(addr746);
                                                                                                   }
                                                                                                   §§goto(addr512);
                                                                                                }
                                                                                                §§goto(addr745);
                                                                                             }
                                                                                             §§goto(addr746);
                                                                                          }
                                                                                          §§goto(addr472);
                                                                                       }
                                                                                       §§goto(addr464);
                                                                                    }
                                                                                    §§goto(addr438);
                                                                                 }
                                                                                 §§goto(addr219);
                                                                              }
                                                                              §§goto(addr457);
                                                                           }
                                                                           §§goto(addr476);
                                                                        }
                                                                        addr429:
                                                                        §§push(§§pop() + "mul ft1, ft1, v1        \n" + "mov oc, ft1 \n");
                                                                     }
                                                                     §§goto(addr462);
                                                                     §§push(§§pop());
                                                                  }
                                                                  §§goto(addr434);
                                                                  §§push(§§pop());
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr429);
                                                            §§push("tex ft1, v0, fs0 <???>  \n");
                                                         }
                                                         §§goto(addr442);
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   §§push(_loc6_);
                                                   if(_loc23_ || _loc1_)
                                                   {
                                                      if(_loc23_)
                                                      {
                                                         if(!(_loc24_ && _loc1_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc23_ || _loc1_)
                                                               {
                                                                  §§push("tex ft1, v0, fs0 <???>  \n");
                                                                  if(!_loc24_)
                                                                  {
                                                                     if(_loc23_)
                                                                     {
                                                                        if(!_loc24_)
                                                                        {
                                                                           if(!(_loc24_ && _loc2_))
                                                                           {
                                                                              §§push("mul oc, ft1, fc0        \n");
                                                                              if(!_loc24_)
                                                                              {
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    if(_loc23_ || QuadBatch)
                                                                                    {
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          if(!(_loc24_ && _loc1_))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc23_ || _loc1_)
                                                                                             {
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      addr354:
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         addr357:
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            if(!(_loc24_ && QuadBatch))
                                                                                                            {
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  §§goto(addr219);
                                                                                                               }
                                                                                                               §§goto(addr464);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr476);
                                                                                                }
                                                                                                §§goto(addr408);
                                                                                             }
                                                                                             addr332:
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                addr335:
                                                                                                §§push("mov oc, ft1 \n");
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   if(_loc23_ || QuadBatch)
                                                                                                   {
                                                                                                      addr345:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  §§goto(addr354);
                                                                                                               }
                                                                                                               §§goto(addr463);
                                                                                                            }
                                                                                                            §§goto(addr357);
                                                                                                         }
                                                                                                         addr460:
                                                                                                         §§goto(addr461);
                                                                                                         §§push(§§pop() + "mov v0, va1 \n");
                                                                                                      }
                                                                                                      §§goto(addr461);
                                                                                                   }
                                                                                                   §§goto(addr460);
                                                                                                }
                                                                                                §§goto(addr429);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr442);
                                                                                       }
                                                                                       §§goto(addr461);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr421);
                                                                              }
                                                                              §§goto(addr335);
                                                                           }
                                                                           §§goto(addr442);
                                                                        }
                                                                     }
                                                                     §§goto(addr421);
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            §§push("tex ft1, v0, fs0 <???>  \n");
                                                            if(!(_loc24_ && _loc3_))
                                                            {
                                                               §§goto(addr332);
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         §§goto(addr472);
                                                      }
                                                      §§goto(addr463);
                                                   }
                                                   §§goto(addr405);
                                                }
                                                §§goto(addr471);
                                             }
                                             §§goto(addr461);
                                          }
                                       }
                                       §§goto(addr460);
                                       §§push("m44 op, va0, vc0  \n");
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr408);
                              }
                              §§goto(addr746);
                           }
                           §§goto(addr93);
                        }
                     }
                  }
               }
            }
            return;
         }
         addr54:
      }
      
      public static function §9!h§(param1:Boolean) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               §§goto(addr30);
            }
            else
            {
               §§push("QB_q\'");
            }
            §§goto(addr43);
         }
         addr30:
         §§push("QB_q*");
         if(_loc2_)
         {
            §§push(§§pop());
            if(_loc2_ || _loc2_)
            {
            }
         }
         else
         {
            addr43:
            return §§pop();
         }
         return §§pop();
      }
      
      public static function §&!%§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            if(param1)
            {
               addr26:
               §§push("QB_i*");
               if(_loc8_ || QuadBatch)
               {
                  §§push(§§pop());
                  if(_loc8_)
                  {
                     addr42:
                     §§push(§§pop());
                  }
               }
               else
               {
                  addr39:
                  §§push(§§pop());
                  if(_loc8_)
                  {
                     §§goto(addr42);
                  }
               }
               var _loc6_:* = §§pop();
               if(_loc8_ || param1)
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
                              addr216:
                              while(true)
                              {
                                 §§push("N");
                                 addr217:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr218:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr219:
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          addr220:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr215:
                        }
                        while(true)
                        {
                           §§push(param3);
                           loop9:
                           for(; _loc8_; loop16:
                           while(true)
                           {
                              §§push(param5);
                              if(_loc7_ && param3)
                              {
                                 break;
                              }
                              if(_loc7_)
                              {
                                 continue loop0;
                              }
                              if(§§pop())
                              {
                                 if(_loc8_ || param1)
                                 {
                                    §§push(_loc6_);
                                    loop17:
                                    while(true)
                                    {
                                       §§push("C");
                                       if(!(_loc7_ && QuadBatch))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop());
                                             loop18:
                                             for(; _loc8_; if(_loc7_ && param2)
                                             {
                                                continue;
                                             },if(!_loc8_)
                                             {
                                                continue loop17;
                                             },if(!_loc7_)
                                             {
                                                §§push(§=!C§.§1l§);
                                                if(!_loc7_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr95);
                                                         }
                                                         addr94:
                                                      }
                                                      §§goto(addr118);
                                                   }
                                                   §§goto(addr52);
                                                }
                                                §§goto(addr113);
                                             },§§goto(addr216))
                                             {
                                                if(!_loc7_)
                                                {
                                                   _loc6_ = §§pop();
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param4);
                                                               if(_loc8_ || QuadBatch)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               addr95:
                                                               addr95:
                                                               while(true)
                                                               {
                                                                  if(_loc8_ || param3)
                                                                  {
                                                                     §§push(param4);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop().charAt(0));
                                                                        addr117:
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                     addr113:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr219);
                                                                  }
                                                               }
                                                            }
                                                            addr61:
                                                         }
                                                         break;
                                                      }
                                                      continue loop16;
                                                   }
                                                   §§goto(addr220);
                                                   addr165:
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr207);
                                       }
                                       break;
                                    }
                                    §§goto(addr199);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr61);
                           })
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 if(_loc8_ || param1)
                                 {
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       §§push("R");
                                       addr199:
                                       while(!(_loc7_ && param1))
                                       {
                                          §§push(§§pop() + §§pop());
                                          while(!_loc7_)
                                          {
                                             §§push(§§pop());
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                addr211:
                                                while(true)
                                                {
                                                   continue loop9;
                                                }
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr217);
                                    }
                                    addr198:
                                 }
                                 else
                                 {
                                    §§goto(addr215);
                                 }
                              }
                              §§goto(addr216);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr94);
            }
            else
            {
               §§push("QB_i\'");
            }
            §§goto(addr39);
         }
         §§goto(addr26);
      }
      
      public function get §90§() : int
      {
         return this.§!!P§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(Boolean(this.§"-§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§"-§.dispose();
                     addr131:
                     while(true)
                     {
                     }
                  }
                  addr127:
               }
               while(true)
               {
                  §§push(Boolean(this.§-!^§));
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr28);
         }
      }
      
      private function §>p§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§;H§.§>!B§);
         if(!_loc5_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc1_);
            if(_loc4_ || this)
            {
               §§push(0);
               if(!(_loc5_ && _loc1_))
               {
                  if(§§pop() == §§pop())
                  {
                     addr45:
                     §§push(16);
                     if(!_loc5_)
                     {
                        §§push(int(§§pop()));
                        if(!(_loc5_ && _loc2_))
                        {
                           addr56:
                        }
                        addr70:
                        §§push(int(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!_loc5_)
                     {
                        addr61:
                        §§push(int(§§pop() * 2));
                        if(!(_loc5_ && _loc1_))
                        {
                           §§goto(addr70);
                        }
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || _loc2_)
                  {
                     this.§;H§.§>!B§ = _loc2_ * 4;
                  }
                  §§push(_loc1_);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!(_loc5_ && this))
                     {
                        if(§§pop() >= _loc2_)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              if(!(_loc5_ && this))
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    this.§#!!§ = true;
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       this.§9X§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                       while(_loc4_)
                                       {
                                          this.§9X§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                          loop3:
                                          while(_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§push(_loc3_);
                                                if(_loc4_)
                                                {
                                                   addr154:
                                                   §§push(§§pop() + 1);
                                                   if(!_loc4_)
                                                   {
                                                   }
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr155:
                                                      while(!_loc4_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr154:
                                                }
                                                §§goto(addr154);
                                                §§push(int(§§pop()));
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    addr274:
                                    while(true)
                                    {
                                       this.§9X§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                    }
                                    while(true)
                                    {
                                       this.§9X§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr155);
                           }
                           break;
                        }
                        this.§9X§[int(_loc3_ * 6)] = _loc3_ * 4;
                        §§goto(addr274);
                     }
                     §§goto(addr154);
                  }
                  return;
               }
               §§goto(addr61);
            }
            §§goto(addr56);
         }
         §§goto(addr45);
      }
      
      private function §<!R§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§#!!§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(param1 != null)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(Boolean(this.§"-§));
                              loop3:
                              while(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(false);
                                          break;
                                       }
                                       addr166:
                                       this.§"-§.dispose();
                                       while(_loc3_ || _loc3_)
                                       {
                                          addr64:
                                          if(!(_loc3_ || this))
                                          {
                                             continue;
                                          }
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue loop1;
                                          }
                                          if(false)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(Boolean(this.§8!F§));
                                                loop11:
                                                while(_loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§8!F§.dispose();
                                                         addr91:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr87:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(Boolean(this.§%!Z§));
                                                      if(_loc4_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr25:
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc4_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!(_loc3_ || this))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        this.§%!Z§.dispose();
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§-!^§.dispose();
                                                                           continue loop4;
                                                                        }
                                                                        addr97:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr87);
                                                                  }
                                                               }
                                                               §§goto(addr64);
                                                            }
                                                            break;
                                                         }
                                                         break loop4;
                                                      }
                                                      addr96:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§goto(addr25);
                                                      }
                                                      §§goto(addr97);
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             addr80:
                                          }
                                          §§push(this.§;H§.§>!B§);
                                          if(_loc3_)
                                          {
                                             §§push(int(§§pop() / 4));
                                          }
                                          var _loc2_:* = §§pop();
                                          if(!_loc4_)
                                          {
                                             this.§"-§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§1!§);
                                             this.§"-§.uploadFromByteArray(this.§;H§.§7k§,0,0,_loc2_ * 4);
                                             this.§-!^§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§`!-§);
                                             addr290:
                                             addr321:
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                this.§-!^§.uploadFromVector(this.§;H§.§2!+§,0,_loc2_ * 4);
                                                addr276:
                                                if(!_loc4_)
                                                {
                                                   this.§8!F§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§9;§);
                                                   this.§8!F§.uploadFromVector(this.§;H§.§@#§,0,_loc2_ * 4);
                                                   this.§%!Z§ = param1.createIndexBuffer(_loc2_ * 6);
                                                   addr229:
                                                   addr251:
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         this.§%!Z§.uploadFromVector(this.§9X§,0,_loc2_ * 6);
                                                         addr211:
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               this.§#!!§ = false;
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr229);
                                                                  }
                                                                  return true;
                                                                  addr199:
                                                               }
                                                               §§goto(addr211);
                                                            }
                                                            §§goto(addr276);
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   addr263:
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr321);
                                             }
                                             addr332:
                                             §§goto(addr332);
                                          }
                                          §§goto(addr199);
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr167);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr96);
                                 }
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr141);
                     }
                  }
                  §§goto(addr166);
               }
               addr167:
               return §§pop();
            }
         }
         §§goto(addr115);
      }
      
      private function §^N§(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§<!R§(param1));
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§"-§.uploadFromByteArray(this.§;H§.§7k§,0,0,this.§!!P§ * 4);
                     while(true)
                     {
                        §§push(this.§<!K§);
                        if(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(!(_loc3_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop2;
                                    }
                                    this.§-!^§.uploadFromVector(this.§;H§.§2!+§,0,this.§!!P§ * 4);
                                 }
                                 addr101:
                                 break;
                              }
                              break;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     this.§8!F§.uploadFromVector(this.§;H§.§@#§,0,this.§!!P§ * 4);
                     if(_loc2_ && this)
                     {
                        §§goto(addr101);
                     }
                     addr44:
                     break loop1;
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param2))
         {
            if(this.§!!P§ == 0)
            {
               if(!_loc9_)
               {
                  §§goto(addr29);
               }
            }
            §§push(this.§;H§.premultipliedAlpha);
            if(_loc8_ || param2)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param3 == 1);
            if(_loc8_)
            {
               §§push(!§§pop());
               if(!(_loc9_ && param2))
               {
                  §§push(Boolean(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc9_ && param2))
            {
               if(this.§5!%§)
               {
                  addr68:
                  §§push(§&!%§(_loc5_,this.§5!%§.mipMapping,this.§5!%§.repeat,this.§=!i§,this.§<!K§));
                  if(!(_loc9_ && param2))
                  {
                     §§push(§§pop());
                     if(!(_loc8_ || param2))
                     {
                        addr107:
                        §§push(§§pop());
                        if(!_loc9_)
                        {
                           addr111:
                           var _loc6_:String = §§pop();
                           if(!(_loc9_ && param3))
                           {
                              RenderSupport.§"6§(param1,_loc4_);
                              loop0:
                              while(true)
                              {
                                 this.§^N§(param1);
                                 if(_loc8_ || param2)
                                 {
                                    param1.setProgram(Starling.§!!F§.§9!J§(_loc6_));
                                    if(_loc8_)
                                    {
                                       param1.setVertexBufferAt(0,this.§8!F§,VertexData.§=!c§,Context3DVertexBufferFormat.FLOAT_3);
                                       if(_loc8_)
                                       {
                                          if(_loc9_)
                                          {
                                             continue;
                                          }
                                          §§push(this.§5!%§);
                                          if(!_loc9_)
                                          {
                                             §§push(null);
                                             if(_loc8_ || param1)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc8_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            addr201:
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc9_ && param3))
                                                                  {
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§<!K§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc9_)
                                                                           {
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       param1.setVertexBufferAt(2,this.§-!^§,VertexData.§0J§,Context3DVertexBufferFormat.FLOAT_4);
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          addr120:
                                                                                          param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             §§push(_loc5_);
                                                                                             if(_loc8_ || param3)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §[!7§[0] = §[!7§[1] = §[!7§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §[!7§[3] = param3;
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.setVertexBufferAt(2,null);
                                                                                                         loop3:
                                                                                                         while(!_loc9_)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1.setVertexBufferAt(0,null);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  if(_loc8_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     loop17:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              loop8:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 param1.drawTriangles(this.§%!Z§,0,this.§!!P§ * 2);
                                                                                                                                 addr450:
                                                                                                                                 loop9:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§5!%§);
                                                                                                                                             loop10:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   break loop23;
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                                addr384:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§5!%§);
                                                                                                                                                   if(!(_loc8_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue loop10;
                                                                                                                                                   }
                                                                                                                                                   §§push(null);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      loop20:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            break loop23;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!(_loc9_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  addr412:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        break loop20;
                                                                                                                                                                     }
                                                                                                                                                                     addr363:
                                                                                                                                                                     addr414:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_ && param3)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop3;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop16;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§<!K§);
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           addr348:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           addr348:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              break loop20;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc8_ || param2))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop20;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr363);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr403:
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr494:
                                                                                                                                                         addr494:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr495:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  param1.setTextureAt(0,this.§5!%§.getBase(param1));
                                                                                                                                                                  break loop9;
                                                                                                                                                               }
                                                                                                                                                               addr495:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               param1.setTextureAt(0,null);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop8;
                                                                                                                                                               }
                                                                                                                                                               addr463:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         §§goto(addr414);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr493:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr494);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr454:
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr463);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    param1.setVertexBufferAt(1,this.§"-§,VertexData.§ N§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr515:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr479:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr515);
                                                                                                                        }
                                                                                                                        addr481:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr493);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.setTextureAt(0,null);
                                                                                                                     break loop3;
                                                                                                                  }
                                                                                                                  addr433:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        break loop27;
                                                                                                                     }
                                                                                                                     §§goto(addr495);
                                                                                                                  }
                                                                                                                  §§goto(addr450);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr438:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.setVertexBufferAt(1,null);
                                                                                                            §§goto(addr421);
                                                                                                         }
                                                                                                      }
                                                                                                      addr374:
                                                                                                   }
                                                                                                   §§goto(addr454);
                                                                                                }
                                                                                                §§goto(addr481);
                                                                                             }
                                                                                             §§goto(addr348);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr495);
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 §§goto(addr120);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr384);
                                                                              }
                                                                              addr425:
                                                                              addr142:
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr433);
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                     §§goto(addr450);
                                                                  }
                                                                  §§goto(addr425);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         §§goto(addr412);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr403);
                                                }
                                                §§goto(addr494);
                                             }
                                             §§goto(addr395);
                                          }
                                          §§goto(addr493);
                                       }
                                       §§goto(addr438);
                                    }
                                    §§goto(addr414);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§[!7§,1);
                                 §§goto(addr515);
                              }
                           }
                           §§goto(addr479);
                        }
                     }
                  }
                  §§goto(addr111);
               }
               else
               {
                  §§push(§9!h§(_loc5_));
                  if(_loc8_ || param2)
                  {
                     §§goto(addr107);
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr68);
         }
         addr29:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!!P§ = 0;
            loop0:
            while(true)
            {
               this.§<!K§ = false;
               while(true)
               {
                  this.§5!%§ = null;
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        this.§=!i§ = null;
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §<!#§(param1:§3x§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            §§push(this.§!!P§);
            if(_loc9_ || param1)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc9_)
                  {
                     if(§§pop() > this.§;H§.§>!B§ / 4)
                     {
                        addr145:
                        while(true)
                        {
                           this.§>p§();
                           addr148:
                           while(true)
                           {
                           }
                        }
                        addr145:
                     }
                     while(true)
                     {
                        §§push(this.§!!P§);
                        if(_loc9_ || param1)
                        {
                           §§push(0);
                           if(!(_loc10_ && param3))
                           {
                              if(_loc10_)
                              {
                                 continue loop0;
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    this.§5!%§ = param3;
                                 }
                                 loop2:
                                 while(!_loc10_)
                                 {
                                    do
                                    {
                                       this.§=!i§ = param4;
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop2;
                                          }
                                          if(!(_loc10_ && param2))
                                          {
                                             §§push(this.§;H§);
                                             if(_loc9_ || this)
                                             {
                                                §§push(Boolean(param3));
                                                if(_loc9_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr34:
                                                      §§push(param3.premultipliedAlpha);
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc10_ && this)
                                                         {
                                                            addr60:
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      §§goto(addr60);
                                                   }
                                                   else
                                                   {
                                                      §§push(true);
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§goto(addr60);
                                                      }
                                                   }
                                                   §§pop().setPremultipliedAlpha(§§pop(),false);
                                                   if(_loc9_ || param3)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr60);
                                             }
                                             §§goto(addr34);
                                          }
                                          else
                                          {
                                             §§goto(addr145);
                                          }
                                       }
                                    }
                                    while(false);
                                    
                                 }
                                 continue;
                              }
                              §§push(this.§!!P§);
                              if(!(_loc10_ && param1))
                              {
                                 break;
                              }
                              var _loc6_:* = §§pop();
                              if(!_loc10_)
                              {
                                 §§push(param2);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() * param1.alpha);
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       param2 = §§pop();
                                       if(!_loc10_)
                                       {
                                          while(true)
                                          {
                                             param1.copyVertexDataTo(this.§;H§,_loc6_,param2,param5);
                                             loop8:
                                             while(true)
                                             {
                                                addr217:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(!(_loc9_ || param3))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc10_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(§§pop() == 1);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc10_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr240:
                                                                  addr185:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.useColor);
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               addr239:
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr272:
                                                                  var _loc7_:*;
                                                                  §§push((_loc7_ = this).§!!P§);
                                                                  if(_loc9_ || param2)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  var _loc8_:* = §§pop();
                                                                  if(_loc9_ || param2)
                                                                  {
                                                                     _loc7_.§!!P§ = _loc8_;
                                                                  }
                                                                  break loop6;
                                                               }
                                                               if(_loc10_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(_loc9_ || param2)
                                                               {
                                                                  this.§<!K§ = true;
                                                                  if(!(_loc9_ || param1))
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr240);
                                                               §§goto(addr185);
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                   }
                                                }
                                                continue loop6;
                                             }
                                          }
                                          addr271:
                                       }
                                       break;
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr271);
                           }
                           addr159:
                           §§push(§§pop() * §§pop());
                           break loop0;
                        }
                        break;
                     }
                     addr158:
                     §§goto(addr159);
                     §§push(4);
                  }
                  break;
               }
               §§goto(addr161);
               §§push(int(§§pop()));
            }
            §§goto(addr158);
         }
         §§goto(addr145);
      }
      
      public function §&&§(param1:§3x§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(this.§5!%§);
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
                           if(!_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§5!%§);
                                          if(_loc4_ || this)
                                          {
                                             §§push(null);
                                             if(_loc5_ && param3)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() == §§pop());
                                             loop8:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop11:
                                                      while(_loc4_ || this)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop12:
                                                               for(; !_loc5_; if(_loc5_ && this)
                                                               {
                                                                  continue;
                                                               },if(!_loc5_)
                                                               {
                                                                  §§goto(addr115);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr515);
                                                                  }
                                                                  addr514:
                                                               })
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§pop();
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || param2)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(param2 == null);
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 addr227:
                                                                                 loop15:
                                                                                 while(_loc4_ || this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr238:
                                                                                             §§push(false);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop17:
                                                                                             for(; _loc4_ || this; §§pop(),if(_loc4_ || param1)
                                                                                             {
                                                                                                continue loop13;
                                                                                             })
                                                                                             {
                                                                                                if(!(_loc5_ && param3))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§!!P§);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(!(_loc5_ && param2))
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            addr150:
                                                                                                            addr378:
                                                                                                            if(!(_loc5_ && param3))
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr239);
                                                                                                                  }
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  if(_loc4_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_ || param3)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop10;
                                                                                                                              }
                                                                                                                              if(_loc4_ || this)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr188:
                                                                                                                                    return §§pop();
                                                                                                                                    addr188:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr115:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc5_ && param1))
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && param3))
                                                                                                                                          {
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                          addr498:
                                                                                                                                          addr497:
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop26:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr500:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr451:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr452:
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         loop38:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr502:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  break loop17;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr423:
                                                                                                                                                                  §§push(this.§5!%§);
                                                                                                                                                                  if(_loc4_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop0;
                                                                                                                                                                  }
                                                                                                                                                                  addr490:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().root == param2.root);
                                                                                                                                                                     addr494:
                                                                                                                                                                     while(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr497);
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                     }
                                                                                                                                                                     continue loop4;
                                                                                                                                                                     §§goto(addr423);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop0;
                                                                                                                                                               addr454:
                                                                                                                                                               addr502:
                                                                                                                                                            }
                                                                                                                                                            addr405:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr407:
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!(_loc5_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr417:
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr418:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§push(this.§<!K§);
                                                                                                                                                                        §§push(param1.useColor);
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop26;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() != §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc5_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              break loop15;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                           addr322:
                                                                                                                                                                           if(!(_loc4_ || param3))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              break loop12;
                                                                                                                                                                           }
                                                                                                                                                                           addr475:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop6;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr454);
                                                                                                                                                                        addr419:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        break loop11;
                                                                                                                                                                     }
                                                                                                                                                                     return §§pop();
                                                                                                                                                                     addr372:
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop38;
                                                                                                                                                            }
                                                                                                                                                            continue loop5;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr450:
                                                                                                                                                }
                                                                                                                                                addr501:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   §§goto(addr502);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr403:
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       §§goto(addr405);
                                                                                                                                    }
                                                                                                                                    §§goto(addr322);
                                                                                                                                 }
                                                                                                                                 continue loop10;
                                                                                                                              }
                                                                                                                              §§goto(addr407);
                                                                                                                           }
                                                                                                                           addr178:
                                                                                                                        }
                                                                                                                        §§goto(addr417);
                                                                                                                     }
                                                                                                                     addr170:
                                                                                                                  }
                                                                                                                  §§goto(addr418);
                                                                                                               }
                                                                                                               addr158:
                                                                                                            }
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc4_ || param3)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     break loop13;
                                                                                                                  }
                                                                                                                  §§goto(addr494);
                                                                                                               }
                                                                                                               §§goto(addr498);
                                                                                                            }
                                                                                                            §§goto(addr451);
                                                                                                         }
                                                                                                         addr321:
                                                                                                         §§goto(addr322);
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr320:
                                                                                                   §§goto(addr321);
                                                                                                   §§push(8192);
                                                                                                   addr119:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr488:
                                                                                                   §§push(this.§5!%§);
                                                                                                }
                                                                                                §§goto(addr490);
                                                                                             }
                                                                                             if(!(_loc5_ && param2))
                                                                                             {
                                                                                                §§push(this.§=!i§ == param3);
                                                                                                while(true)
                                                                                                {
                                                                                                   addr402:
                                                                                                   §§goto(addr403);
                                                                                                   break loop12;
                                                                                                }
                                                                                                continue loop3;
                                                                                                addr401:
                                                                                             }
                                                                                             §§goto(addr502);
                                                                                          }
                                                                                          addr239:
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr119);
                                                                                    }
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr372);
                                                                                 }
                                                                                 §§goto(addr501);
                                                                              }
                                                                              addr226:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2 == null);
                                                                                 if(!(_loc5_ && param2))
                                                                                 {
                                                                                    §§goto(addr475);
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                              }
                                                                              addr515:
                                                                           }
                                                                           §§goto(addr494);
                                                                        }
                                                                        break;
                                                                        if(!(_loc4_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.§<!K§);
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(param1.useColor);
                                                                                    if(!(_loc5_ && param3))
                                                                                    {
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_ && this)
                                                                                                      {
                                                                                                         §§goto(addr227);
                                                                                                      }
                                                                                                      §§push(!§§pop());
                                                                                                      if(_loc5_ && param1)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && param2))
                                                                                                      {
                                                                                                         if(_loc4_ || param2)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         addr438:
                                                                                                         §§push(param2.repeat);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            addr441:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               if(!(_loc5_ && param3))
                                                                                                               {
                                                                                                                  §§goto(addr450);
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr502);
                                                                                                            }
                                                                                                         }
                                                                                                         addr440:
                                                                                                      }
                                                                                                      §§goto(addr402);
                                                                                                   }
                                                                                                   §§goto(addr418);
                                                                                                }
                                                                                                §§goto(addr500);
                                                                                             }
                                                                                             §§goto(addr452);
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§goto(addr378);
                                                                                             }
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                          §§goto(addr440);
                                                                                       }
                                                                                       §§goto(addr170);
                                                                                    }
                                                                                    §§goto(addr178);
                                                                                 }
                                                                                 §§goto(addr226);
                                                                              }
                                                                              §§goto(addr158);
                                                                           }
                                                                           §§goto(addr188);
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§goto(addr419);
                                                                     }
                                                                     §§goto(addr320);
                                                                     §§push(this.§!!P§);
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               if(_loc4_ || param1)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr441);
                                                                  }
                                                                  if(!(_loc4_ || param3))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr417);
                                                               }
                                                               §§goto(addr401);
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr418);
                                                      }
                                                      §§goto(addr375);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr423);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr488);
                                 }
                              }
                              §§goto(addr514);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr238);
      }
   }
}
