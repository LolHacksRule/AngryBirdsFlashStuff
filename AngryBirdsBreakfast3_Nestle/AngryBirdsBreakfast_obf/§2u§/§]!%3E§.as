package §2u§
{
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §'"!§.§9!E§;
   import §'"!§.§<!7§;
   import §1`§.§9%§;
   import §24§.;
   import com.rovio.assets.§=!V§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]!>§ extends §,6§
   {
      
      public static const §"!W§:int = 0;
      
      public static const §^!O§:int = 1;
      
      public static const §<Q§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"!W§ = 0;
         }
         while(true)
         {
            §^!O§ = 1;
            while(!(_loc2_ && _loc1_))
            {
               §<Q§ = 2;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public var §#!F§:String;
      
      public var §3!Z§:Class;
      
      public var §%!x§:String = null;
      
      public var include:Vector.<§9!E§>;
      
      public var §>f§:int;
      
      public var §@!g§:Number;
      
      public var §-!7§:Number;
      
      public var §+!>§:Number;
      
      public var §@4§:Number;
      
      public var §>;§:Number;
      
      public var §5!^§:Number;
      
      public var §>"3§:Number;
      
      public var §%^§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §<!-§:int;
      
      public var §?!P§:Number;
      
      public var §6b§:String = "";
      
      public var §@!3§:int;
      
      public var §5!3§:int;
      
      public var §9!t§:GlowFilter;
      
      public var § ;§:Boolean = true;
      
      public var §,!V§:int;
      
      public var §?!p§:int;
      
      public var §`_§:Number = 0;
      
      public var §4x§:Number = 0;
      
      public var §%"3§:Number = 0;
      
      public var §-!'§:Number = 0;
      
      public var §>"+§:Boolean = false;
      
      public var §]!x§:Boolean = false;
      
      public var §=f§:MovieClip = null;
      
      public function §]!>§(param1:XML, param2:§,6§, param3:§9%§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §,!z§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§<Y§ = null;
         var _loc8_:§9!E§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§!!j§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         if(_loc20_ || param2)
         {
            if(param2 == null)
            {
               if(!(_loc19_ && _loc3_))
               {
                  param2 = §!!j§;
                  §§goto(addr75);
               }
               §§goto(addr94);
            }
            addr75:
            this.include = new Vector.<§9!E§>();
            if(_loc20_)
            {
               addr83:
               this.§+L§();
               if(_loc19_ && _loc3_)
               {
               }
               §§goto(addr94);
            }
            if(!param1)
            {
               addr94:
               param1 = new Array();
               §§goto(addr98);
            }
            addr98:
            var _loc3_:int = 0;
            loop0:
            while(true)
            {
               if(_loc3_ >= param1.length)
               {
                  if(!_loc19_)
                  {
                     break;
                  }
                  §§goto(addr954);
               }
               §§push(mName + "_Tab_");
               if(!_loc19_)
               {
                  §§push(§§pop() + _loc3_);
               }
               _loc4_ = §§pop();
               if(_loc19_ && this)
               {
                  break;
               }
               _loc5_ = new MovieClip();
               (_loc6_ = <Container/>).@name = _loc4_;
               _loc7_ = new §<Y§(_loc6_,this,null,_loc5_);
               if(_loc20_)
               {
                  §,_§.push(_loc7_);
               }
               _loc8_ = new §9!E§(this.§?!p§,_loc4_);
               if(_loc20_ || this)
               {
                  this.include.push(_loc8_);
                  if(!_loc20_)
                  {
                     continue;
                  }
                  §§push(this.§>;§);
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc9_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§>f§);
                           loop4:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop5:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 if(!(_loc19_ && param2))
                                 {
                                    §§push(param1);
                                    if(!(_loc19_ && _loc3_))
                                    {
                                       §§push(_loc3_);
                                       if(!_loc19_)
                                       {
                                          if((§§pop()[§§pop()] as Array).length < _loc10_)
                                          {
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(!_loc19_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(int((§§pop()[§§pop()] as Array).length));
                                                      while(true)
                                                      {
                                                         _loc10_ = §§pop();
                                                         if(_loc20_ || param2)
                                                         {
                                                            if(!_loc20_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      addr933:
                                                      _loc3_++;
                                                      continue loop0;
                                                      addr277:
                                                   }
                                                   addr318:
                                                   _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                   if(_loc20_)
                                                   {
                                                      if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                      {
                                                         if(_loc20_ || param2)
                                                         {
                                                            _loc7_.§,_§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                            if(_loc20_ || param1)
                                                            {
                                                            }
                                                            addr391:
                                                            _loc13_ = _loc7_.§,_§[_loc7_.§,_§.length - 1] as §!!j§;
                                                            if(_loc20_)
                                                            {
                                                               §§push(param1);
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                     {
                                                                        if(_loc20_ || param1)
                                                                        {
                                                                           addr440:
                                                                           _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                           if(!(_loc19_ && param2))
                                                                           {
                                                                              _loc13_.§0!d§(_loc14_,this.§%!x§);
                                                                              addr530:
                                                                              §§push(this.§@!3§);
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 if(§§pop() == §^!O§)
                                                                                 {
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr523:
                                                                                          _loc15_ = 2;
                                                                                          addr493:
                                                                                          _loc14_.y -= _loc14_.height / 2;
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             if(this.§%!x§ == null)
                                                                                             {
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(!(_loc19_ && param1))
                                                                                                   {
                                                                                                      _loc14_.y -= _loc15_;
                                                                                                      addr491:
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr493);
                                                                                                      }
                                                                                                      §§push(this.§<!-§);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(_loc20_ || _loc3_)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  _loc13_.x = _loc9_ + _loc11_ * this.§>"3§;
                                                                                                                  if(_loc20_ || this)
                                                                                                                  {
                                                                                                                     §§push(_loc13_);
                                                                                                                     §§push(this.§5!^§);
                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc11_ * this.§%^§);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     addr582:
                                                                                                                     _loc8_.§&k§(_loc13_);
                                                                                                                     addr883:
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        if(!(_loc19_ && param2))
                                                                                                                        {
                                                                                                                           if(_loc20_ || param2)
                                                                                                                           {
                                                                                                                              if(!(_loc19_ && _loc3_))
                                                                                                                              {
                                                                                                                                 _loc11_++;
                                                                                                                                 if(!(_loc19_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                    {
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr582);
                                                                                                                                          }
                                                                                                                                          addr885:
                                                                                                                                          if(_loc11_ < (param1[_loc3_] as Array).length)
                                                                                                                                          {
                                                                                                                                             §§push(param1);
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             _loc8_.§]!f§("");
                                                                                                                                             if(_loc19_ && param1)
                                                                                                                                             {
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             _loc7_.§<"-§(this.§>f§,this.§@!g§,this.§-!7§,this.§,!V§ * this.§>"3§,this.§,!V§ * this.§%^§,this.§<!-§,this.§,!V§);
                                                                                                                                             if(_loc19_ && this)
                                                                                                                                             {
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr933);
                                                                                                                                       }
                                                                                                                                       addr692:
                                                                                                                                       if(!(_loc19_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr582);
                                                                                                                                          addr699:
                                                                                                                                       }
                                                                                                                                       if(this.§ ;§)
                                                                                                                                       {
                                                                                                                                          addr704:
                                                                                                                                          §§push(_loc13_);
                                                                                                                                          §§push(_loc9_ + _loc18_ * this.§>"3§);
                                                                                                                                          if(!(_loc19_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(_loc16_ * this.§>f§);
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§>"3§);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          §§push(_loc13_);
                                                                                                                                          §§push(this.§5!^§);
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          §§goto(addr692);
                                                                                                                                          addr729:
                                                                                                                                       }
                                                                                                                                       _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                       addr813:
                                                                                                                                       addr679:
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       §§push(this.§5!^§);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * this.§%^§);
                                                                                                                                             if(_loc20_ || param1)
                                                                                                                                             {
                                                                                                                                                addr652:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc20_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr638:
                                                                                                                                                   §§push(_loc16_ * this.§>f§);
                                                                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * this.§%^§);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                if(_loc20_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr667:
                                                                                                                                                      §§goto(addr582);
                                                                                                                                                   }
                                                                                                                                                   addr854:
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         if(!(_loc19_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§>f§);
                                                                                                                                                            if(_loc20_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc19_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§<!-§);
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr775:
                                                                                                                                                                           §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                           if(_loc20_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc20_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§>f§);
                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr795:
                                                                                                                                                                                    §§push(§§pop() % §§pop());
                                                                                                                                                                                    if(_loc20_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr803:
                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                       if(_loc20_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                                                                             §§goto(addr813);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr816:
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr862:
                                                                                                                                                                                             §§push(this.§>f§);
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr863:
                                                                                                                                                                                                §§push(§§pop() * §§pop() * this.§<!-§);
                                                                                                                                                                                                if(_loc20_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr864:
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr846:
                                                                                                                                                                                                      addr844:
                                                                                                                                                                                                      addr845:
                                                                                                                                                                                                      §§push(int(§§pop() / this.§>f§));
                                                                                                                                                                                                      if(_loc20_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr853:
                                                                                                                                                                                                         _loc17_ = §§pop();
                                                                                                                                                                                                         §§goto(addr854);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr865:
                                                                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                                                                      §§goto(addr816);
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      addr866:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr865);
                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr864);
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr863);
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr862);
                                                                                                                                                                                          §§push(this.§<!-§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr846);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr864);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr844);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr845);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr795);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr863);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr775);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr862);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr816);
                                                                                                                                                      }
                                                                                                                                                      addr858:
                                                                                                                                                      §§goto(addr816);
                                                                                                                                                      §§push(this.§>f§);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr803);
                                                                                                                                                }
                                                                                                                                                §§goto(addr679);
                                                                                                                                             }
                                                                                                                                             §§goto(addr652);
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr638);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr652);
                                                                                                                                 }
                                                                                                                                 §§goto(addr582);
                                                                                                                              }
                                                                                                                              §§goto(addr883);
                                                                                                                           }
                                                                                                                           §§goto(addr866);
                                                                                                                        }
                                                                                                                        §§goto(addr704);
                                                                                                                     }
                                                                                                                     §§goto(addr729);
                                                                                                                     addr561:
                                                                                                                  }
                                                                                                                  §§goto(addr667);
                                                                                                               }
                                                                                                               §§goto(addr561);
                                                                                                            }
                                                                                                            §§goto(addr858);
                                                                                                            §§push(_loc11_);
                                                                                                         }
                                                                                                         §§goto(addr862);
                                                                                                      }
                                                                                                      §§goto(addr853);
                                                                                                   }
                                                                                                   §§goto(addr493);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr491);
                                                                                          }
                                                                                          addr524:
                                                                                          §§goto(addr524);
                                                                                       }
                                                                                       §§goto(addr530);
                                                                                    }
                                                                                    §§goto(addr493);
                                                                                 }
                                                                                 §§goto(addr491);
                                                                              }
                                                                           }
                                                                           §§goto(addr523);
                                                                        }
                                                                        §§goto(addr699);
                                                                     }
                                                                     §§goto(addr491);
                                                                  }
                                                               }
                                                               §§goto(addr440);
                                                            }
                                                            §§goto(addr582);
                                                         }
                                                         §§goto(addr391);
                                                      }
                                                      _loc7_.§,_§.push(new param2(_loc12_,_loc7_,new this.§3!Z§() as MovieClip));
                                                   }
                                                   §§goto(addr391);
                                                }
                                                break;
                                                addr181:
                                                if(!(_loc20_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(false)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§5!3§);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(§§pop() == §"!W§)
                                                         {
                                                            if(_loc20_ || this)
                                                            {
                                                               §§push(this.§+!>§);
                                                               if(_loc20_ || _loc3_)
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(!(_loc19_ && param2))
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(§§pop() * this.§>"3§);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc19_ && this))
                                                                     {
                                                                        addr236:
                                                                        §§push(§§pop() / 2);
                                                                     }
                                                                     if(_loc19_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(int(§§pop()));
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        if(_loc19_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(_loc19_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        _loc9_ = §§pop();
                                                                        if(_loc19_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc20_)
                                                                           {
                                                                              if(!_loc20_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(_loc19_ && this)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(_loc20_)
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 if(_loc20_ || this)
                                                                                 {
                                                                                    §§goto(addr181);
                                                                                 }
                                                                                 §§goto(addr933);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr277);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr885);
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               §§goto(addr236);
                                                            }
                                                            §§goto(addr933);
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr190:
                                                }
                                                §§goto(addr885);
                                             }
                                             addr317:
                                             §§goto(addr318);
                                             §§push(_loc3_);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr318);
                                    }
                                    §§goto(addr317);
                                 }
                                 §§goto(addr933);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr287);
            }
            if(param1.length > 1)
            {
            }
            addr954:
            return;
         }
         §§goto(addr83);
      }
      
      public function get §<B§() : int
      {
         return this.§>f§;
      }
      
      public function get §6!=§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§<B§);
            if(_loc2_ || this)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr48);
                  }
               }
               §§push(this.§8!t§(this.§6b§).§9-§.length / this.§<B§);
               if(!(_loc1_ && _loc1_))
               {
                  return §§pop() + 1;
               }
            }
            §§goto(addr48);
         }
         addr48:
         return 0;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§+§, param4:Event = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§9!E§ = null;
         var _loc5_:§<Y§ = getItemByName(this.§6b§) as §<Y§;
         if(!(_loc8_ && param1))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase() == "SCROLL_LEFT")
               {
                  if(!(_loc8_ && param2))
                  {
                     if(_loc5_)
                     {
                        addr213:
                        _loc5_.§""0§(_loc5_.§'!6§ - 1);
                        if(!_loc8_)
                        {
                           this.§!$§();
                           break;
                        }
                        addr227:
                        addr227:
                        §§push(Boolean(_loc6_ = this.§8!t§((param3 as §<!7§).mParentContainer.mName.toUpperCase())));
                        if(!(_loc8_ && param2))
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || this)
                              {
                                 addr255:
                                 §§pop();
                                 if(_loc7_ || param3)
                                 {
                                    §§goto(addr266);
                                 }
                                 §§goto(addr269);
                              }
                           }
                           addr266:
                           if(param3 is §!!j§)
                           {
                              if(!_loc8_)
                              {
                                 _loc6_.§]!f§((param3 as §<!7§).mName.toUpperCase());
                                 addr269:
                              }
                           }
                           §§goto(addr286);
                        }
                        §§goto(addr255);
                     }
                     §§goto(addr166);
                  }
               }
               else
               {
                  §§push(param2);
                  while(true)
                  {
                     if(§§pop().toUpperCase() != "SCROLL_RIGHT")
                     {
                        continue;
                     }
                     if(!(_loc8_ && param3))
                     {
                        if(_loc5_)
                        {
                           if(_loc7_ || param3)
                           {
                              _loc5_.§""0§(_loc5_.§'!6§ + 1);
                              do
                              {
                                 this.§!$§();
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr227);
                              }
                              while(_loc8_ && param3);
                              
                              addr118:
                              break;
                           }
                           §§goto(addr266);
                        }
                        §§goto(addr118);
                     }
                  }
               }
               §§goto(addr266);
               if(!(_loc7_ || param1))
               {
                  continue;
               }
               §§push(§§pop().length > 0);
               loop2:
               while(true)
               {
                  §§push(§§pop());
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§pop();
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(param1);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() == §+§.LISTENER_EVENT_MOUSE_DOWN);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc7_ || this))
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§push(§§pop() == §+§.LISTENER_EVENT_MOUSE_UP);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc7_ || this))
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(_loc8_ && param3)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc8_ && param3))
                                                                              {
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          addr224:
                                                                                          if(param3 is §<!7§)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                break loop11;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr266);
                                                                                       }
                                                                                    }
                                                                                    break loop11;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop3;
                                                                        addr60:
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop10;
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr213);
                                                         }
                                                      }
                                                      break loop0;
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr227);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr60);
                  }
               }
            }
            addr166:
            addr286:
            super.childUIEventOccured(param1,param2,param3,param4);
            return;
         }
         §§goto(addr101);
      }
      
      public function §[p§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<Y§ = getItemByName(param1) as §<Y§;
         if(!_loc5_)
         {
            if(_loc3_)
            {
               do
               {
                  _loc3_.§""0§(param2);
                  do
                  {
                     this.§!$§();
                  }
                  while(_loc5_ && param1);
                  
               }
               while(_loc5_ && param2);
               
               addr70:
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function §8!t§(param1:String) : §9!E§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.include.length)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(_loc4_ || _loc3_)
               {
                  return null;
               }
            }
            else if(param1.toUpperCase() == (this.include[_loc2_] as §9!E§).mName.toUpperCase())
            {
               break;
            }
            _loc2_++;
         }
         while(_loc4_);
         
         return this.include[_loc2_] as §9!E§;
      }
      
      public function §<%§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§6b§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §,_§.length)
            {
               if(_loc4_)
               {
                  this.§!$§();
               }
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           loop2:
                           while(true)
                           {
                              _loc2_++;
                              addr50:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          break;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§>"+§);
                                          loop9:
                                          while(!§§pop())
                                          {
                                             addr96:
                                             while(true)
                                             {
                                                §§push(this.§]!x§);
                                                if(_loc3_ && this)
                                                {
                                                   continue loop9;
                                                }
                                                if(!(_loc3_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr67:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while((§,_§[_loc2_] as §<Y§).mName.toUpperCase() == param1.toUpperCase())
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop1;
                                                         addr189:
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr188:
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop8;
                                                }
                                                addr126:
                                                this.§=f§.y = (§,_§[_loc2_] as §<Y§).y + this.§-!'§;
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         break loop9;
                                                      }
                                                      this.§=f§.height = (§,_§[_loc2_] as §<Y§).height + this.§4x§;
                                                      while(true)
                                                      {
                                                         §§goto(addr67);
                                                      }
                                                   }
                                                   addr161:
                                                   while(true)
                                                   {
                                                      §§goto(addr96);
                                                   }
                                                   §§goto(addr126);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                this.§=f§.x = (§,_§[_loc2_] as §<Y§).x + this.§%"3§;
                                                while(true)
                                                {
                                                   this.§=f§.width = (§,_§[_loc2_] as §<Y§).width + this.§`_§;
                                                   §§goto(addr161);
                                                }
                                                addr180:
                                             }
                                             §§goto(addr189);
                                          }
                                       }
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr124);
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr50);
            }
            else
            {
               §§push(§,_§[_loc2_] is §<Y§);
            }
            §§goto(addr188);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§9!E§ = null;
         if(!_loc6_)
         {
            super.setEnabled(param1,param2);
         }
         for each(_loc3_ in this.include)
         {
            if(!(_loc6_ && param2))
            {
               _loc3_.setEnabled(param1,param2);
            }
         }
      }
      
      public function §!$§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr40);
                  }
               }
               §§goto(addr48);
            }
            addr40:
            §§pop();
            if(_loc3_)
            {
               addr48:
               addr43:
               if(getItemByName("Button_Scroll2") == null)
               {
                  if(_loc3_)
                  {
                     §§goto(addr51);
                  }
               }
               var _loc1_:§<Y§ = getItemByName(this.§6b§) as §<Y§;
               if(_loc3_)
               {
                  if(_loc1_)
                  {
                     if(_loc3_ || this)
                     {
                        §§push(_loc1_.§'!6§);
                        loop5:
                        while(true)
                        {
                           §§push(0);
                           loop6:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 addr195:
                                 while(true)
                                 {
                                    (getItemByName("Button_Scroll1") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 }
                                 addr195:
                              }
                              else
                              {
                                 (getItemByName("Button_Scroll1") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_DISABLED);
                                 addr171:
                                 loop9:
                                 while(true)
                                 {
                                    addr131:
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc1_.§'!6§);
                                       if(!_loc3_)
                                       {
                                          continue loop5;
                                       }
                                       §§push(_loc1_.§^U§);
                                       if(!_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       if(§§pop() >= §§pop() - 1)
                                       {
                                          (getItemByName("Button_Scroll2") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_DISABLED);
                                          while(true)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                addr63:
                                                return;
                                                addr86:
                                             }
                                          }
                                          addr123:
                                       }
                                       while(true)
                                       {
                                          if(_loc3_ || _loc1_)
                                          {
                                             break loop2;
                                          }
                                          continue loop9;
                                       }
                                       continue loop9;
                                    }
                                    addr157:
                                    (getItemByName("Button_Scroll2") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr195);
                                       }
                                       §§goto(addr86);
                                    }
                                 }
                                 addr171:
                              }
                              §§goto(addr171);
                           }
                        }
                     }
                  }
                  else
                  {
                     (getItemByName("Button_Scroll1") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_DISABLED);
                     for(; _loc3_; (getItemByName("Button_Scroll2") as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_DISABLED),if(!_loc3_)
                     {
                        continue;
                     },if(_loc2_ && _loc2_)
                     {
                        §§goto(addr123);
                     },§§goto(addr63))
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr203:
                        while(true)
                        {
                           §§goto(addr131);
                           §§goto(addr195);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr203);
               }
               §§goto(addr171);
            }
            addr51:
            return;
         }
         §§goto(addr43);
      }
      
      public function §+L§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<Y§ = null;
         var _loc1_:* = int(§,_§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = §,_§[_loc1_] as §<Y§;
            if(_loc3_)
            {
               if(_loc2_)
               {
                  if(_loc3_ || this)
                  {
                     _loc2_.clear();
                  }
                  loop1:
                  while(true)
                  {
                     addr56:
                     while(true)
                     {
                        §,_§.splice(_loc1_,1);
                        addr61:
                        while(!_loc4_)
                        {
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc3_)
                  {
                     while(false)
                     {
                        §§goto(addr56);
                     }
                     continue loop0;
                     addr54:
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr54);
         }
         if(_loc3_ || _loc2_)
         {
            this.§<%§("");
         }
      }
      
      public function §>""§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!E§ = null;
         var _loc3_:* = this.include;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.§>""§();
            }
         }
      }
      
      public function §'r§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§8!t§(this.§6b§));
            while(§§pop() != null)
            {
               §§push(this.§8!t§(this.§6b§));
               if(_loc2_)
               {
                  return §§pop().§"C§();
               }
            }
         }
         §#7§.log("ERROR! Tried to get selections for noninited repeater!");
         return new Array();
      }
      
      public function §1!a§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!t§(this.§6b§).§1!a§(param1);
         }
      }
      
      public function §4r§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§8!t§(this.§6b§).§4r§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.clear();
            while(true)
            {
               this.§3!Z§ = null;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.include = null;
                     do
                     {
                        this.§9!t§ = null;
                     }
                     while(_loc1_ && this);
                     
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
   }
}
