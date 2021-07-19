package §77§
{
   import §0N§.§2!@§;
   import §5X§.§+!#§;
   import §5X§.§3""§;
   import §5X§.§8n§;
   import §5X§.§@!!§;
   import §^=§.§1"F§;
   import com.rovio.assets.§ !h§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §%]§ extends § ",§
   {
      
      public static const §9!Q§:int = 0;
      
      public static const §%s§:int = 1;
      
      public static const §4!x§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §9!Q§ = 0;
         }
         while(true)
         {
            §%s§ = 1;
            while(_loc1_)
            {
               §4!x§ = 2;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public var §8?§:String;
      
      public var §8z§:Class;
      
      public var §0y§:String = null;
      
      public var §^!7§:Vector.<§3""§>;
      
      public var §@!s§:int;
      
      public var §+!$§:Number;
      
      public var §^c§:Number;
      
      public var §##§:Number;
      
      public var §6"0§:Number;
      
      public var §6!V§:Number;
      
      public var §<"A§:Number;
      
      public var §-!W§:Number;
      
      public var §7"5§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §#"§:int;
      
      public var §4x§:Number;
      
      public var §-Z§:String = "";
      
      public var §6_§:int;
      
      public var §,K§:int;
      
      public var §,-§:GlowFilter;
      
      public var §8"A§:Boolean = true;
      
      public var §@!D§:int;
      
      public var §2"=§:int;
      
      public var §-!"§:Number = 0;
      
      public var §&!T§:Number = 0;
      
      public var §3!q§:Number = 0;
      
      public var §"C§:Number = 0;
      
      public var §>Y§:Boolean = false;
      
      public var §]!N§:Boolean = false;
      
      public var §%!3§:MovieClip = null;
      
      public function §%]§(param1:XML, param2:§ ",§, param3:§1"F§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §9<§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§1!_§ = null;
         var _loc8_:§3""§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§#"D§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:int = 0;
         if(!_loc19_)
         {
            if(param2 == null)
            {
               if(!_loc19_)
               {
                  param2 = §#"D§;
                  addr65:
                  this.§^!7§ = new Vector.<§3""§>();
                  if(_loc20_ || param1)
                  {
                     this.§9!S§();
                     if(_loc20_)
                     {
                        §§push(param1);
                        if(!(_loc19_ && _loc3_))
                        {
                           if(§§pop() == null)
                           {
                              if(_loc20_)
                              {
                                 addr94:
                                 param1 = getParentView().getRepeaterDataXML(mName);
                              }
                              §§goto(addr102);
                           }
                           §§push(param1);
                        }
                        if(!§§pop())
                        {
                           addr102:
                           param1 = new Array();
                           §§goto(addr106);
                        }
                        addr106:
                        var _loc3_:int = 0;
                        loop0:
                        while(true)
                        {
                           if(_loc3_ >= param1.length)
                           {
                              if(_loc20_)
                              {
                                 break;
                              }
                              §§goto(addr937);
                           }
                           §§push(mName + "_Tab_");
                           if(!(_loc19_ && _loc3_))
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           _loc4_ = §§pop();
                           if(!_loc20_)
                           {
                              break;
                           }
                           _loc5_ = new MovieClip();
                           (_loc6_ = <Container/>).@name = _loc4_;
                           _loc7_ = new §1!_§(_loc6_,this,null,_loc5_);
                           if(_loc20_ || _loc3_)
                           {
                              §1"0§.push(_loc7_);
                           }
                           _loc8_ = new §3""§(this.§2"=§,_loc4_);
                           if(!(_loc19_ && this))
                           {
                              this.§^!7§.push(_loc8_);
                              loop1:
                              while(true)
                              {
                                 §§push(this.§6!V§);
                                 addr317:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr318:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       if(_loc19_ && this)
                                       {
                                          continue loop0;
                                       }
                                       §§push(this.§@!s§);
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc20_)
                                          {
                                             _loc10_ = §§pop();
                                             continue loop1;
                                          }
                                          addr868:
                                          addr868:
                                          if(§§pop() < (param1[_loc3_] as Array).length)
                                          {
                                             addr336:
                                             _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
                                             if(_loc20_ || _loc3_)
                                             {
                                                if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      _loc7_.§1"0§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                      if(_loc20_ || _loc3_)
                                                      {
                                                         addr397:
                                                      }
                                                   }
                                                   addr409:
                                                   _loc13_ = _loc7_.§1"0§[_loc7_.§1"0§.length - 1] as §#"D§;
                                                   if(_loc20_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc20_ || param1)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc19_ && param2))
                                                         {
                                                            if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                            {
                                                               if(!_loc19_)
                                                               {
                                                                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                  addr453:
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     _loc13_.§]"$§(_loc14_,this.§0y§);
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§6_§);
                                                                        if(!(_loc19_ && _loc3_))
                                                                        {
                                                                           addr540:
                                                                           if(§§pop() != §%s§)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(2);
                                                                           }
                                                                           addr540:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           §§goto(addr540);
                                                                        }
                                                                        addr520:
                                                                        if(!(_loc19_ && param2))
                                                                        {
                                                                           if(this.§0y§ == null)
                                                                           {
                                                                              if(!_loc19_)
                                                                              {
                                                                                 if(_loc20_ || _loc3_)
                                                                                 {
                                                                                    _loc14_.y -= _loc15_;
                                                                                    addr504:
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc14_.y -= _loc14_.height / 2;
                                                                                             addr518:
                                                                                             while(_loc20_)
                                                                                             {
                                                                                                §§goto(addr520);
                                                                                             }
                                                                                             §§goto(addr540);
                                                                                          }
                                                                                          addr508:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr508);
                                                                                    }
                                                                                    addr542:
                                                                                 }
                                                                                 §§goto(addr518);
                                                                              }
                                                                              §§goto(addr504);
                                                                           }
                                                                           break;
                                                                        }
                                                                     }
                                                                     addr549:
                                                                     §§push(this.§#"§);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(!(_loc19_ && param1))
                                                                              {
                                                                                 _loc13_.x = _loc9_ + _loc11_ * this.§-!W§;
                                                                                 if(!(_loc19_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    §§push(this.§<"A§);
                                                                                    if(!(_loc19_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + _loc11_ * this.§7"5§);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc8_.§4"A§(_loc13_);
                                                                                          loop13:
                                                                                          while(!_loc19_)
                                                                                          {
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr599:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc11_++;
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      addr867:
                                                                                                      addr875:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr868);
                                                                                                      }
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         addr877:
                                                                                                         _loc8_.§^0§("");
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            _loc7_.§2"3§(this.§@!s§,this.§+!$§,this.§^c§,this.§@!D§ * this.§-!W§,this.§@!D§ * this.§7"5§,this.§#"§,this.§@!D§);
                                                                                                            if(!(_loc20_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      _loc3_++;
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                }
                                                                                                addr599:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(this.§<"A§);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(_loc18_);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§7"5§);
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               addr632:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc19_ && _loc3_))
                                                                                                               {
                                                                                                                  addr623:
                                                                                                                  §§push(_loc16_ * this.§@!s§);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * this.§7"5§);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               break loop13;
                                                                                                            }
                                                                                                            §§goto(addr632);
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§goto(addr623);
                                                                                                      }
                                                                                                      §§goto(addr632);
                                                                                                   }
                                                                                                   addr652:
                                                                                                   _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                addr686:
                                                                                             }
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr837:
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr728:
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(this.§@!s§);
                                                                                                               if(!(_loc19_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!(_loc19_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        if(!(_loc19_ && this))
                                                                                                                        {
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(this.§#"§);
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 addr773:
                                                                                                                                 §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                 {
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§@!s§);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr788:
                                                                                                                                          §§push(§§pop() % §§pop());
                                                                                                                                          if(_loc20_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr796:
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                continue loop19;
                                                                                                                                             }
                                                                                                                                             loop33:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      addr841:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§@!s§);
                                                                                                                                                         addr843:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§#"§);
                                                                                                                                                            addr845:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr846:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  loop24:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                     addr848:
                                                                                                                                                                     loop25:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                        addr849:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                           addr811:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                              addr812:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§@!s§);
                                                                                                                                                                                 addr814:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§#"§);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr825:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             addr826:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(this.§@!s§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                   addr831:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr824:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr825);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr728);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop25;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr841:
                                                                                                                                                   }
                                                                                                                                                   _loc17_ = §§pop();
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                §§goto(addr848);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr826);
                                                                                                                                       }
                                                                                                                                       §§goto(addr830);
                                                                                                                                    }
                                                                                                                                    §§goto(addr831);
                                                                                                                                 }
                                                                                                                                 §§goto(addr788);
                                                                                                                              }
                                                                                                                              §§goto(addr824);
                                                                                                                           }
                                                                                                                           §§goto(addr846);
                                                                                                                        }
                                                                                                                        §§goto(addr825);
                                                                                                                     }
                                                                                                                     §§goto(addr773);
                                                                                                                  }
                                                                                                                  §§goto(addr845);
                                                                                                               }
                                                                                                               §§goto(addr814);
                                                                                                            }
                                                                                                            §§goto(addr843);
                                                                                                         }
                                                                                                         §§goto(addr812);
                                                                                                      }
                                                                                                      §§goto(addr811);
                                                                                                   }
                                                                                                   §§goto(addr796);
                                                                                                }
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc20_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(!(_loc19_ && param1))
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(_loc9_ + _loc18_ * this.§-!W§);
                                                                                                      if(_loc20_ || this)
                                                                                                      {
                                                                                                         §§push(_loc16_ * this.§@!s§);
                                                                                                         if(_loc20_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§-!W§);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().x = §§pop();
                                                                                                      addr808:
                                                                                                      if(this.§8"A§)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr652);
                                                                                                   }
                                                                                                }
                                                                                                while(_loc19_)
                                                                                                {
                                                                                                   §§goto(addr849);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   §§push(this.§<"A§);
                                                                                                   if(_loc20_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                }
                                                                                                addr723:
                                                                                             }
                                                                                             §§goto(addr686);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr837);
                                                                              }
                                                                              §§goto(addr723);
                                                                           }
                                                                           §§goto(addr841);
                                                                           §§push(_loc11_);
                                                                        }
                                                                        §§goto(addr812);
                                                                     }
                                                                     §§goto(addr841);
                                                                  }
                                                                  §§goto(addr542);
                                                               }
                                                               §§goto(addr599);
                                                            }
                                                            §§goto(addr549);
                                                         }
                                                      }
                                                      §§goto(addr453);
                                                   }
                                                   §§goto(addr599);
                                                }
                                                _loc7_.§1"0§.push(new param2(_loc12_,_loc7_,new this.§8z§() as MovieClip));
                                                §§goto(addr409);
                                             }
                                             §§goto(addr397);
                                          }
                                          §§goto(addr875);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr187);
                        }
                        if(param1.length > 1)
                        {
                        }
                        addr937:
                        return;
                     }
                  }
                  §§goto(addr94);
               }
               §§goto(addr102);
            }
            §§goto(addr65);
         }
         §§goto(addr94);
      }
      
      public function get §0<§() : int
      {
         return this.§@!s§;
      }
      
      public function get §9T§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§0<§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr47);
                  }
               }
               §§push(this.§`!`§(this.§-Z§).§1!'§.length / this.§0<§);
               if(!(_loc2_ && this))
               {
                  return §§pop() + 1;
               }
            }
            §§goto(addr47);
         }
         addr47:
         return 0;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§+!#§, param4:Event = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§3""§ = null;
         var _loc5_:§1!_§ = getItemByName(this.§-Z§) as §1!_§;
         if(!(_loc7_ && param3))
         {
            §§push(param2);
            loop0:
            for(; §§pop().toUpperCase() != "SCROLL_LEFT"; if(_loc7_ && this)
            {
               continue;
            },§§push(§§pop().length > 0),if(_loc8_ || param3)
            {
               §§push(§§pop());
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        if(!(_loc7_ && param1))
                        {
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() == §+!#§.LISTENER_EVENT_MOUSE_DOWN);
                                    addr95:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             addr52:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc7_ && param1))
                                                {
                                                   continue loop2;
                                                }
                                                continue loop10;
                                             }
                                             continue loop2;
                                             addr52:
                                          }
                                          if(!(_loc7_ && param2))
                                          {
                                             if(_loc8_)
                                             {
                                                §§pop();
                                                continue loop7;
                                             }
                                             continue loop3;
                                          }
                                          addr215:
                                          addr215:
                                          if(§§pop())
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                break loop3;
                                             }
                                             addr293:
                                             return;
                                          }
                                          §§goto(addr287);
                                       }
                                    }
                                 }
                              }
                           }
                           addr151:
                        }
                        break;
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr52);
               }
            },§§goto(addr215))
            {
               §§push(param2);
               while(true)
               {
                  if(§§pop().toUpperCase() != "SCROLL_RIGHT")
                  {
                     §§push(param2);
                     if(_loc8_)
                     {
                        continue loop0;
                     }
                     continue;
                  }
                  if(!_loc7_)
                  {
                     if(_loc5_)
                     {
                        if(!_loc7_)
                        {
                           _loc5_.§&!F§(_loc5_.§@!-§ + 1);
                           if(!_loc7_)
                           {
                              addr184:
                              if(!(_loc7_ && this))
                              {
                                 if(!_loc7_)
                                 {
                                    this.§0!P§();
                                    if(!(_loc7_ && param2))
                                    {
                                       addr108:
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr206:
                                    _loc5_.§&!F§(_loc5_.§@!-§ - 1);
                                    this.§0!P§();
                                    if(!_loc7_)
                                    {
                                       addr163:
                                       break;
                                    }
                                    addr211:
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr211);
                           }
                           else
                           {
                              addr223:
                              §§push(Boolean(_loc6_ = this.§`!`§((param3 as §8n§).mParentContainer.mName.toUpperCase())));
                              if(!(_loc7_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       addr251:
                                       §§pop();
                                       if(!(_loc7_ && param2))
                                       {
                                          addr262:
                                          if(param3 is §#"D§)
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                _loc6_.§^0§((param3 as §8n§).mName.toUpperCase());
                                                addr270:
                                                break;
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       §§goto(addr270);
                                    }
                                 }
                                 §§goto(addr262);
                              }
                              §§goto(addr251);
                           }
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr184);
               }
               super.childUIEventOccured(param1,param2,param3,param4);
               §§goto(addr293);
            }
            if(_loc5_)
            {
               §§goto(addr206);
            }
            §§goto(addr163);
         }
         §§goto(addr151);
      }
      
      public function §-!r§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§1!_§ = getItemByName(param1) as §1!_§;
         if(!_loc5_)
         {
            if(_loc3_)
            {
               do
               {
                  _loc3_.§&!F§(param2);
                  do
                  {
                     this.§0!P§();
                  }
                  while(!_loc4_);
                  
               }
               while(_loc5_);
               
               addr57:
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §`!`§(param1:String) : §3""§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§^!7§.length)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(_loc4_ || _loc3_)
               {
                  return null;
               }
            }
            else if(param1.toUpperCase() == (this.§^!7§[_loc2_] as §3""§).mName.toUpperCase())
            {
               break;
            }
            _loc2_++;
         }
         while(_loc4_);
         
         return this.§^!7§[_loc2_] as §3""§;
      }
      
      public function §^!3§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§-Z§ = param1;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §1"0§.length)
            {
               if(!(_loc3_ && this))
               {
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc3_)
                           {
                              this.§0!P§();
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(this.§>Y§);
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                              }
                              while(true)
                              {
                                 (§1"0§[_loc2_] as §1!_§).setActiveStatus(true);
                                 continue loop1;
                              }
                           }
                        }
                        while(true)
                        {
                           this.§%!3§.x = (§1"0§[_loc2_] as §1!_§).x + this.§3!q§;
                           §§goto(addr185);
                        }
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr64);
               }
               break;
            }
            §§push(§1"0§[_loc2_] is §1!_§);
            §§goto(addr193);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3""§ = null;
         if(!(_loc6_ && param1))
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§^!7§)
         {
            if(!_loc6_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §0!P§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc1_)
                  {
                     addr45:
                     §§pop();
                     addr62:
                     if(_loc3_ || _loc1_)
                     {
                        §§push(getItemByName("Button_Scroll2") == null);
                     }
                     var _loc1_:§1!_§ = getItemByName(this.§-Z§) as §1!_§;
                     if(!(_loc2_ && this))
                     {
                        if(!_loc1_)
                        {
                           (getItemByName("Button_Scroll1") as §@_§).setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
                           while(true)
                           {
                              if(!(_loc2_ && this))
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr158);
                                       }
                                    }
                                    while(true)
                                    {
                                       addr158:
                                       §§goto(addr78);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr157);
                           }
                           addr78:
                           loop2:
                           while(true)
                           {
                              §§push(_loc1_.§@!-§);
                              if(_loc3_)
                              {
                                 §§push(_loc1_.§&!2§);
                                 if(_loc3_ || _loc1_)
                                 {
                                    if(§§pop() < §§pop() - 1)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             (getItemByName("Button_Scroll2") as §@_§).setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             break loop0;
                                          }
                                          addr211:
                                          while(true)
                                          {
                                             §§push(_loc1_.§@!-§);
                                             addr213:
                                             while(true)
                                             {
                                                §§push(0);
                                             }
                                          }
                                       }
                                       break loop0;
                                    }
                                    addr157:
                                    (getItemByName("Button_Scroll2") as §@_§).setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       continue loop1;
                                    }
                                    (getItemByName("Button_Scroll1") as §@_§).setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
                                    continue loop2;
                                 }
                              }
                              §§goto(addr213);
                           }
                           return;
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr100);
                  }
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     return;
                  }
                  §§goto(addr62);
               }
               §§goto(addr62);
            }
         }
         §§goto(addr45);
      }
      
      public function §9!S§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1!_§ = null;
         var _loc1_:* = int(§1"0§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = §1"0§[_loc1_] as §1!_§;
            if(_loc3_)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     _loc2_.clear();
                     addr85:
                     while(true)
                     {
                        addr75:
                        while(true)
                        {
                           §1"0§.splice(_loc1_,1);
                           addr80:
                           while(true)
                           {
                           }
                        }
                     }
                     addr66:
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr75);
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     §§goto(addr66);
                  }
                  §§goto(addr85);
               }
               continue;
            }
            §§goto(addr80);
         }
         if(!_loc4_)
         {
            this.§^!3§("");
         }
      }
      
      public function §!0§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§3""§ = null;
         for each(_loc1_ in this.§^!7§)
         {
            if(_loc4_)
            {
               _loc1_.§!0§();
            }
         }
      }
      
      public function §5"E§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§`!`§(this.§-Z§));
         }
         else
         {
            do
            {
               §§push(this.§`!`§(this.§-Z§));
            }
            while(_loc2_);
            
            return §§pop().§@T§();
            addr24:
         }
         while(§§pop() != null)
         {
            §§goto(addr24);
         }
         if(_loc1_ || this)
         {
            §2!@§.log("ERROR! Tried to get selections for noninited repeater!");
         }
         return new Array();
      }
      
      public function §"!,§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§`!`§(this.§-Z§).§"!,§(param1);
         }
      }
      
      public function §[^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§`!`§(this.§-Z§).§[^§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.clear();
         }
         loop0:
         while(true)
         {
            this.§8z§ = null;
            do
            {
               this.§^!7§ = null;
               continue loop0;
            }
            while(_loc2_ && _loc2_);
            
            return;
         }
      }
   }
}
