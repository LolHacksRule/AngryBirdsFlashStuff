package §>M§
{
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §'!D§.§0y§;
   import §'!D§.§?!h§;
   import §7'§.§!y§;
   import §>P§.§5!§;
   import §>^§.§!6§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]w§ extends §<6§
   {
      
      public static const §&!R§:int = 0;
      
      public static const §+!0§:int = 1;
      
      public static const §=f§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&!R§ = 0;
            while(true)
            {
               §+!0§ = 1;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §=f§ = 2;
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public var §2!f§:String;
      
      public var §@E§:Class;
      
      public var §6!;§:String = null;
      
      public var §9%§:Vector.<§0y§>;
      
      public var §+x§:int;
      
      public var §]z§:Number;
      
      public var §3!H§:Number;
      
      public var §7u§:Number;
      
      public var §1d§:Number;
      
      public var §4!"§:Number;
      
      public var §7!7§:Number;
      
      public var §;j§:Number;
      
      public var §9!O§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §6B§:int;
      
      public var §!"§:Number;
      
      public var §@![§:String = "";
      
      public var §if§:int;
      
      public var §9h§:int;
      
      public var §9!'§:GlowFilter;
      
      public var §@G§:Boolean = true;
      
      public var §-e§:int;
      
      public var §@! §:int;
      
      public var §implements§:Number = 0;
      
      public var §<J§:Number = 0;
      
      public var §"!@§:Number = 0;
      
      public var §;k§:Number = 0;
      
      public var §,o§:Boolean = false;
      
      public var §>!P§:Boolean = false;
      
      public var §@y§:MovieClip = null;
      
      public function §]w§(param1:XML, param2:§<6§, param3:§5!§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §-m§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§0!O§ = null;
         var _loc8_:§0y§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§[!D§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(!_loc20_)
         {
            if(param2 == null)
            {
               if(_loc19_ || _loc3_)
               {
                  param2 = §[!D§;
                  §§goto(addr69);
               }
               §§goto(addr82);
            }
            addr69:
            this.§9%§ = new Vector.<§0y§>();
            if(!(_loc20_ && param2))
            {
               addr82:
               this.§]g§();
               if(_loc19_ || _loc3_)
               {
                  §§goto(addr91);
               }
               §§goto(addr111);
            }
            addr91:
            §§push(param1);
            if(_loc19_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc20_ && this))
                  {
                     addr103:
                     param1 = getParentView().getRepeaterDataXML(mName);
                  }
                  §§goto(addr111);
               }
               §§push(param1);
            }
            if(!§§pop())
            {
               addr111:
               param1 = new Array();
               §§goto(addr115);
            }
            addr115:
            var _loc3_:int = 0;
            loop0:
            while(true)
            {
               if(_loc3_ >= param1.length)
               {
                  if(!_loc20_)
                  {
                     if(param1.length > 1)
                     {
                     }
                     break;
                  }
                  break;
               }
               §§push(mName + "_Tab_");
               if(_loc19_ || this)
               {
                  §§push(§§pop() + _loc3_);
               }
               _loc4_ = §§pop();
               if(_loc20_)
               {
                  break;
               }
               _loc5_ = new MovieClip();
               (_loc6_ = <Container/>).@name = _loc4_;
               _loc7_ = new §0!O§(_loc6_,this,null,_loc5_);
               if(!_loc20_)
               {
                  §[!L§.push(_loc7_);
               }
               _loc8_ = new §0y§(this.§@! §,_loc4_);
               if(_loc19_)
               {
                  this.§9%§.push(_loc8_);
                  while(true)
                  {
                     §§push(this.§4!"§);
                     addr333:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        addr334:
                        while(true)
                        {
                           _loc9_ = §§pop();
                        }
                     }
                  }
                  addr340:
               }
               loop4:
               while(true)
               {
                  §§push(this.§+x§);
                  loop5:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop6:
                     while(_loc19_)
                     {
                        _loc10_ = §§pop();
                        while(true)
                        {
                           §§push(param1);
                           if(_loc19_)
                           {
                              §§push(_loc3_);
                              if(!(_loc20_ && _loc3_))
                              {
                                 if((§§pop()[§§pop()] as Array).length < _loc10_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc19_ || this)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc20_ && this))
                                             {
                                                while(true)
                                                {
                                                   §§push(int((§§pop()[§§pop()] as Array).length));
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!_loc19_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      _loc10_ = §§pop();
                                                      loop15:
                                                      while(true)
                                                      {
                                                         addr214:
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(this.§9h§);
                                                            if(_loc19_ || _loc3_)
                                                            {
                                                               if(§§pop() == §&!R§)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc19_ || _loc3_))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     §§push(this.§7u§);
                                                                     if(_loc19_)
                                                                     {
                                                                        if(!_loc20_)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(§§pop() * this.§;j§);
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc20_)
                                                                              {
                                                                                 addr252:
                                                                                 §§push(§§pop() / 2);
                                                                              }
                                                                              §§push(int(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc20_ && this))
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 continue loop14;
                                                                                 addr174:
                                                                                 if(_loc19_ || param2)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                              addr916:
                                                                              _loc8_.§;I§("");
                                                                              if(!(_loc20_ && param2))
                                                                              {
                                                                                 addr926:
                                                                                 _loc7_.§-!J§(this.§+x§,this.§]z§,this.§3!H§,this.§-e§ * this.§;j§,this.§-e§ * this.§9!O§,this.§6B§,this.§-e§);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              _loc3_++;
                                                                              continue loop0;
                                                                              addr254:
                                                                           }
                                                                           §§goto(addr252);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr333);
                                                                        }
                                                                     }
                                                                     §§goto(addr252);
                                                                     addr196:
                                                                     if(!(_loc19_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc20_ && _loc3_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(!_loc20_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        addr901:
                                                                        addr902:
                                                                        if(_loc11_ < (param1[_loc3_] as Array).length)
                                                                        {
                                                                           §§push(param1);
                                                                           break loop8;
                                                                        }
                                                                        if(!(_loc20_ && this))
                                                                        {
                                                                           §§goto(addr916);
                                                                        }
                                                                        §§goto(addr926);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr340);
                                                                     }
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               addr170:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc19_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr174);
                                                               }
                                                               §§goto(addr902);
                                                               §§goto(addr254);
                                                            }
                                                            §§goto(addr902);
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                addr313:
                                             }
                                             break;
                                          }
                                          addr345:
                                          _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                          if(!(_loc20_ && param1))
                                          {
                                             if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                             {
                                                if(_loc19_ || this)
                                                {
                                                   addr384:
                                                   _loc7_.§[!L§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                   if(!_loc19_)
                                                   {
                                                   }
                                                }
                                                addr418:
                                                _loc13_ = _loc7_.§[!L§[_loc7_.§[!L§.length - 1] as §[!D§;
                                                if(!(_loc20_ && param2))
                                                {
                                                   §§push(param1);
                                                   if(!_loc20_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc19_)
                                                      {
                                                         if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                         {
                                                            if(!_loc20_)
                                                            {
                                                               addr457:
                                                               _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                               if(!(_loc20_ && param2))
                                                               {
                                                                  _loc13_.§3!3§(_loc14_,this.§6!;§);
                                                                  §§push(this.§if§);
                                                                  if(_loc19_)
                                                                  {
                                                                     addr553:
                                                                     if(§§pop() == §+!0§)
                                                                     {
                                                                        addr544:
                                                                        §§push(2);
                                                                     }
                                                                     §§push(this.§6B§);
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(1);
                                                                        if(!(_loc20_ && this))
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 _loc13_.x = _loc9_ + _loc11_ * this.§;j§;
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    §§push(this.§7!7§);
                                                                                    if(_loc19_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc11_ * this.§9!O§);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    addr601:
                                                                                    _loc8_.§0q§(_loc13_);
                                                                                    addr900:
                                                                                    if(!(_loc20_ && param1))
                                                                                    {
                                                                                       _loc11_++;
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          if(_loc19_ || param1)
                                                                                          {
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                if(_loc19_ || param1)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr601);
                                                                                                   }
                                                                                                   §§goto(addr901);
                                                                                                }
                                                                                                addr707:
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   if(!(_loc20_ && this))
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(_loc9_ + _loc18_ * this.§;j§);
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc16_ * this.§+x§);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§;j§);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().x = §§pop();
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(this.§7!7§);
                                                                                                      if(!(_loc20_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                      addr695:
                                                                                                      if(!(_loc20_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr601);
                                                                                                      }
                                                                                                      addr871:
                                                                                                      §§push(_loc11_);
                                                                                                      if(_loc19_ || _loc3_)
                                                                                                      {
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            if(!(_loc20_ && this))
                                                                                                            {
                                                                                                               if(_loc19_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc16_);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(this.§+x§);
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§push(this.§6B§);
                                                                                                                           if(_loc19_ || param2)
                                                                                                                           {
                                                                                                                              addr787:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc19_ || param2)
                                                                                                                              {
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc19_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc19_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc19_ || param1)
                                                                                                                                          {
                                                                                                                                             addr869:
                                                                                                                                             §§push(this.§+x§);
                                                                                                                                             if(_loc19_ || param1)
                                                                                                                                             {
                                                                                                                                                addr828:
                                                                                                                                                §§push(§§pop() % §§pop());
                                                                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr836:
                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                   if(this.§@G§)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr707);
                                                                                                                                                   }
                                                                                                                                                   _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc20_ && param2))
                                                                                                                                                      {
                                                                                                                                                         addr677:
                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                         §§push(this.§7!7§);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * this.§9!O§);
                                                                                                                                                               if(!(_loc20_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     addr650:
                                                                                                                                                                     addr636:
                                                                                                                                                                     §§push(_loc16_ * this.§+x§);
                                                                                                                                                                     if(_loc19_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr646:
                                                                                                                                                                        §§push(§§pop() * this.§9!O§);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop() + §§pop();
                                                                                                                                                                     §§goto(addr601);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr650);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr646);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr636);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr650);
                                                                                                                                                         addr677:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr900);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr695);
                                                                                                                                                   addr837:
                                                                                                                                                }
                                                                                                                                                addr866:
                                                                                                                                                §§push(this.§+x§);
                                                                                                                                             }
                                                                                                                                             _loc17_ = §§pop() / §§pop();
                                                                                                                                             §§goto(addr871);
                                                                                                                                          }
                                                                                                                                          addr882:
                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                          addr881:
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(_loc19_ || param2)
                                                                                                                                          {
                                                                                                                                             addr877:
                                                                                                                                             §§push(_loc16_);
                                                                                                                                             if(_loc19_ || param2)
                                                                                                                                             {
                                                                                                                                                addr879:
                                                                                                                                                §§push(this.§+x§);
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr880:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      addr865:
                                                                                                                                                      §§goto(addr866);
                                                                                                                                                      §§push(§§pop() - §§pop() * this.§6B§);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr881);
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr880);
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                             §§goto(addr879);
                                                                                                                                             §§push(this.§6B§);
                                                                                                                                          }
                                                                                                                                          §§goto(addr877);
                                                                                                                                          §§push(this.§+x§);
                                                                                                                                          addr883:
                                                                                                                                       }
                                                                                                                                       §§goto(addr869);
                                                                                                                                    }
                                                                                                                                    §§goto(addr828);
                                                                                                                                 }
                                                                                                                                 §§goto(addr880);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr865);
                                                                                                                        }
                                                                                                                        §§goto(addr787);
                                                                                                                     }
                                                                                                                     §§goto(addr879);
                                                                                                                  }
                                                                                                                  §§goto(addr877);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr882);
                                                                                                         }
                                                                                                         §§goto(addr869);
                                                                                                      }
                                                                                                      §§goto(addr836);
                                                                                                      addr741:
                                                                                                   }
                                                                                                   §§goto(addr883);
                                                                                                }
                                                                                                §§goto(addr837);
                                                                                             }
                                                                                             §§goto(addr741);
                                                                                          }
                                                                                          §§goto(addr650);
                                                                                       }
                                                                                       §§goto(addr601);
                                                                                    }
                                                                                    §§goto(addr836);
                                                                                 }
                                                                                 §§goto(addr677);
                                                                              }
                                                                              §§goto(addr836);
                                                                           }
                                                                           §§goto(addr882);
                                                                           §§push(_loc11_);
                                                                        }
                                                                        §§goto(addr879);
                                                                     }
                                                                     §§goto(addr882);
                                                                  }
                                                                  _loc15_ = §§pop();
                                                                  addr512:
                                                                  _loc14_.y -= _loc14_.height / 2;
                                                                  addr552:
                                                                  if(!(_loc20_ && param1))
                                                                  {
                                                                     if(!(_loc20_ && _loc3_))
                                                                     {
                                                                        if(this.§6!;§ == null)
                                                                        {
                                                                           if(!(_loc20_ && this))
                                                                           {
                                                                              if(!_loc20_)
                                                                              {
                                                                                 _loc14_.y -= _loc15_;
                                                                                 addr508:
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    addr510:
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr512);
                                                                                    }
                                                                                    §§goto(addr553);
                                                                                 }
                                                                                 §§goto(addr512);
                                                                              }
                                                                              §§goto(addr544);
                                                                           }
                                                                           §§goto(addr508);
                                                                        }
                                                                        §§goto(addr553);
                                                                     }
                                                                     §§goto(addr552);
                                                                  }
                                                                  addr546:
                                                                  §§goto(addr546);
                                                               }
                                                               §§goto(addr510);
                                                            }
                                                            §§goto(addr836);
                                                         }
                                                         §§goto(addr553);
                                                      }
                                                   }
                                                   §§goto(addr457);
                                                }
                                                §§goto(addr677);
                                             }
                                             _loc7_.§[!L§.push(new param2(_loc12_,_loc7_,new this.§@E§() as MovieClip));
                                             §§goto(addr418);
                                          }
                                          §§goto(addr384);
                                          addr305:
                                       }
                                       break;
                                    }
                                    §§goto(addr345);
                                    §§push(_loc3_);
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr313);
                           }
                           §§goto(addr305);
                           if(!(_loc19_ || _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr170);
                        }
                     }
                     §§goto(addr334);
                  }
               }
            }
            return;
         }
         §§goto(addr103);
      }
      
      public function get §1!C§() : int
      {
         return this.§+x§;
      }
      
      public function get §'S§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§1!C§);
            if(_loc2_)
            {
               if(§§pop() == 0)
               {
                  if(_loc2_)
                  {
                     §§goto(addr43);
                  }
               }
               §§push(this.§^L§(this.§@![§).§"!H§.length / this.§1!C§);
               if(_loc2_ || _loc2_)
               {
                  return §§pop() + 1;
               }
            }
            §§goto(addr43);
         }
         addr43:
         return 0;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§08§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§0y§ = null;
         var _loc4_:§0!O§ = getItemByName(this.§@![§) as §0!O§;
         if(!(_loc6_ && param3))
         {
            §§push(param2);
            loop0:
            while(§§pop().toUpperCase() != "SCROLL_LEFT")
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(§§pop().toUpperCase() == "SCROLL_RIGHT")
                  {
                     if(_loc7_ || param3)
                     {
                        if(_loc4_)
                        {
                           if(!(_loc6_ && this))
                           {
                              addr190:
                              _loc4_.§"R§(_loc4_.§0e§ + 1);
                              break;
                           }
                        }
                        addr292:
                        super.containerEventOccured(param1,param2,param3);
                        return;
                        addr124:
                     }
                     addr233:
                     §§push(Boolean(_loc5_ = this.§^L§((param3 as §?!h§).mParentContainer.mName.toUpperCase())));
                     if(_loc7_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc7_ || this)
                           {
                              §§pop();
                              if(!_loc6_)
                              {
                                 addr267:
                                 if(param3 is §[!D§)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       _loc5_.§;I§((param3 as §?!h§).mName.toUpperCase());
                                       addr275:
                                    }
                                 }
                                 §§goto(addr292);
                              }
                              §§goto(addr275);
                           }
                        }
                     }
                     §§goto(addr267);
                  }
                  else
                  {
                     §§push(param2);
                     if(!_loc7_)
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue loop0;
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
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc6_ && param2)
                                    {
                                       break loop1;
                                    }
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() == §08§.LISTENER_EVENT_MOUSE_DOWN);
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop9:
                                             while(_loc7_ || param2)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr109:
                                                      addr167:
                                                      while(true)
                                                      {
                                                         if(_loc6_ && param1)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(_loc7_ || param3)
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc7_ || param2))
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§push(§§pop() == §08§.LISTENER_EVENT_MOUSE_UP);
                                                            if(_loc6_ && param2)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc7_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop9;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_ || param3)
                                                               {
                                                                  §§goto(addr233);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr159:
                                                            if(_loc6_ && param1)
                                                            {
                                                               break loop0;
                                                            }
                                                            §§goto(addr124);
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      addr167:
                                                      §§goto(addr292);
                                                   }
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr57);
                        }
                     }
                  }
                  §§goto(addr292);
               }
               this.§0T§();
               §§goto(addr159);
            }
            if(_loc4_)
            {
               §§goto(addr216);
            }
            §§goto(addr167);
         }
         §§goto(addr190);
      }
      
      public function §[c§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§0!O§ = getItemByName(param1) as §0!O§;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_)
            {
               if(_loc5_)
               {
                  addr71:
                  _loc3_.§"R§(param2);
               }
               do
               {
                  this.§0T§();
               }
               while(!(_loc5_ || _loc3_));
               
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function §^L§(param1:String) : §0y§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§9%§.length)
            {
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               loop2:
               while(!(_loc3_ || param1))
               {
                  while(true)
                  {
                     continue loop2;
                  }
               }
               continue;
               addr48:
            }
            else if(param1.toUpperCase() == (this.§9%§[_loc2_] as §0y§).mName.toUpperCase())
            {
               if(_loc3_ || param1)
               {
                  return this.§9%§[_loc2_] as §0y§;
               }
               §§goto(addr93);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr48);
            }
         }
         return null;
      }
      
      public function §7!'§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§@![§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §[!L§.length)
            {
               if(_loc4_ || param1)
               {
                  if(_loc4_ || this)
                  {
                     this.§0T§();
                     addr50:
                     if(_loc4_ || _loc3_)
                     {
                        break;
                     }
                     loop12:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           addr77:
                           if(!(_loc3_ && this))
                           {
                              loop13:
                              while(true)
                              {
                                 _loc2_++;
                                 addr60:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this.§>!P§);
                                             if(_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      this.§@y§.y = (§[!L§[_loc2_] as §0!O§).y + this.§;k§;
                                                      addr129:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               this.§@y§.height = (§[!L§[_loc2_] as §0!O§).height + this.§<J§;
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr65:
                                                                     continue loop13;
                                                                  }
                                                                  addr221:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§,o§);
                                                                     addr163:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              break;
                                                                              addr166:
                                                                           }
                                                                           while(!(_loc4_ || _loc2_))
                                                                           {
                                                                           }
                                                                           this.§@y§.x = (§[!L§[_loc2_] as §0!O§).x + this.§"!@§;
                                                                           continue loop2;
                                                                        }
                                                                        addr193:
                                                                        addr194:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if((§[!L§[_loc2_] as §0!O§).mName.toUpperCase() != param1.toUpperCase())
                                                                           {
                                                                              (§[!L§[_loc2_] as §0!O§).setActiveStatus(false);
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               addr98:
                                                            }
                                                            while(true)
                                                            {
                                                               (§[!L§[_loc2_] as §0!O§).setActiveStatus(true);
                                                               §§goto(addr221);
                                                               §§goto(addr194);
                                                            }
                                                         }
                                                         §§goto(addr166);
                                                      }
                                                      §§goto(addr77);
                                                   }
                                                   addr117:
                                                }
                                                §§goto(addr65);
                                             }
                                             §§goto(addr163);
                                          }
                                       }
                                    }
                                    §§goto(addr98);
                                    continue loop13;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr129);
                     }
                  }
                  §§goto(addr60);
               }
               §§goto(addr50);
            }
            else
            {
               §§push(§[!L§[_loc2_] is §0!O§);
            }
            §§goto(addr193);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0y§ = null;
         if(!_loc5_)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§9%§)
         {
            if(!(_loc5_ && param1))
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §0T§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        addr42:
                        if(getItemByName("Button_Scroll2") == null)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr45);
                           }
                        }
                     }
                     var _loc1_:§0!O§ = getItemByName(this.§@![§) as §0!O§;
                     if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           (getItemByName("Button_Scroll1") as §^-§).setComponentState(§0j§.§%!T§);
                           do
                           {
                              (getItemByName("Button_Scroll2") as §^-§).setComponentState(§0j§.§%!T§);
                           }
                           while(!(_loc2_ || _loc2_));
                           
                           if(!_loc3_)
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 addr180:
                                 §§push(_loc1_.§0e§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop5:
                                    while(true)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             (getItemByName("Button_Scroll1") as §^-§).setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             loop7:
                                             while(true)
                                             {
                                                addr130:
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(_loc1_.§0e§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(_loc1_.§52§);
                                                      if(_loc2_)
                                                      {
                                                         if(§§pop() >= §§pop() - 1)
                                                         {
                                                            addr111:
                                                            (getItemByName("Button_Scroll2") as §^-§).setComponentState(§0j§.§%!T§);
                                                         }
                                                         else
                                                         {
                                                            addr87:
                                                            addr120:
                                                         }
                                                         if(!(_loc2_ || _loc1_))
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            continue loop7;
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               if(_loc2_ || this)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr111);
                                                            }
                                                         }
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr157:
                                                            (getItemByName("Button_Scroll2") as §^-§).setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                            break;
                                                         }
                                                         continue loop6;
                                                         return;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr87);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr168:
                                          (getItemByName("Button_Scroll1") as §^-§).setComponentState(§0j§.§%!T§);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr130);
                                          §§goto(addr168);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr157);
                  }
               }
            }
            §§goto(addr42);
         }
         addr45:
      }
      
      public function §]g§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§0!O§ = null;
         var _loc1_:* = int(§[!L§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = §[!L§[_loc1_] as §0!O§;
            if(_loc4_ || _loc3_)
            {
               if(_loc2_)
               {
                  if(!_loc3_)
                  {
                     _loc2_.clear();
                  }
                  loop1:
                  while(true)
                  {
                     addr72:
                     while(true)
                     {
                        §[!L§.splice(_loc1_,1);
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc1_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc4_ || _loc1_)
                  {
                     while(false)
                     {
                        §§goto(addr72);
                     }
                     continue loop0;
                     addr70:
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr70);
         }
         if(_loc4_)
         {
            this.§7!'§("");
         }
      }
      
      public function §&!H§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§0y§ = null;
         for each(_loc1_ in this.§9%§)
         {
            if(!_loc4_)
            {
               _loc1_.§&!H§();
            }
         }
      }
      
      public function §@'§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§^L§(this.§@![§));
            while(§§pop() != null)
            {
               §§push(this.§^L§(this.§@![§));
               if(_loc2_)
               {
                  return §§pop().§-B§();
               }
            }
            §!6§.log("ERROR! Tried to get selections for noninited repeater!");
         }
         return new Array();
      }
      
      public function §@!d§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§^L§(this.§@![§).§@!d§(param1);
         }
      }
      
      public function §"!C§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^L§(this.§@![§).§"!C§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.clear();
            do
            {
               this.§@E§ = null;
               do
               {
                  this.§9%§ = null;
                  do
                  {
                     this.§9!'§ = null;
                  }
                  while(!(_loc2_ || _loc1_));
                  
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || this));
            
         }
      }
   }
}
