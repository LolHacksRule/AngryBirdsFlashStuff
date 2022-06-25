package §2y§
{
   import §1!B§.§<m§;
   import §>f§.§&!G§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §@!&§.§7!>§;
   import §@!&§.§7W§;
   import com.rovio.assets.§,!j§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §<N§ extends §^! §
   {
      
      public static const §!k§:int = 0;
      
      public static const §`f§:int = 1;
      
      public static const §>e§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!k§ = 0;
            while(true)
            {
               §`f§ = 1;
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            §>e§ = 2;
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §<!s§:String;
      
      public var §default§:Class;
      
      public var §4!§:String = null;
      
      public var §3,§:Vector.<§7W§>;
      
      public var §+Y§:int;
      
      public var § <§:Number;
      
      public var §-!f§:Number;
      
      public var §'!;§:Number;
      
      public var §7!`§:Number;
      
      public var §@!a§:Number;
      
      public var § g§:Number;
      
      public var §`m§:Number;
      
      public var §;! §:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §-a§:int;
      
      public var §;"#§:Number;
      
      public var §]E§:String = "";
      
      public var §]N§:int;
      
      public var §-!Z§:int;
      
      public var §2!G§:GlowFilter;
      
      public var §^!'§:Boolean = true;
      
      public var §@!X§:int;
      
      public var §3!f§:int;
      
      public var §true §:Number = 0;
      
      public var § t§:Number = 0;
      
      public var §&=§:Number = 0;
      
      public var §5E§:Number = 0;
      
      public var §5!E§:Boolean = false;
      
      public var §=j§:Boolean = false;
      
      public var §;f§:MovieClip = null;
      
      public function §<N§(param1:XML, param2:§^! §, param3:§&!G§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1331
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §>k§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§;!=§ = null;
         var _loc8_:§7W§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§8!k§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         if(!_loc19_)
         {
            if(param2 == null)
            {
               if(_loc20_)
               {
                  param2 = §8!k§;
               }
               addr78:
               this.§+!%§();
               if(!_loc19_)
               {
                  §§push(param1);
                  if(_loc20_ || this)
                  {
                     if(§§pop() == null)
                     {
                        if(!(_loc19_ && _loc3_))
                        {
                           param1 = getParentView().getRepeaterDataXML(mName);
                        }
                        §§goto(addr107);
                     }
                     §§push(param1);
                  }
                  if(!§§pop())
                  {
                     addr107:
                     param1 = new Array();
                     §§goto(addr111);
                  }
                  addr111:
                  var _loc3_:int = 0;
                  loop0:
                  while(true)
                  {
                     if(_loc3_ >= param1.length)
                     {
                        if(_loc20_)
                        {
                           if(param1.length > 1)
                           {
                           }
                           break;
                        }
                        break;
                     }
                     §§push(mName + "_Tab_");
                     if(_loc20_)
                     {
                        §§push(§§pop() + _loc3_);
                     }
                     _loc4_ = §§pop();
                     if(_loc19_ && param2)
                     {
                        break;
                     }
                     _loc5_ = new MovieClip();
                     (_loc6_ = <Container/>).@name = _loc4_;
                     _loc7_ = new §;!=§(_loc6_,this,null,_loc5_);
                     if(!_loc19_)
                     {
                        §&O§.push(_loc7_);
                     }
                     _loc8_ = new §7W§(this.§3!f§,_loc4_);
                     if(_loc20_ || param1)
                     {
                        this.§3,§.push(_loc8_);
                        if(!_loc19_)
                        {
                           §§push(this.§@!a§);
                           loop1:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop2:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 if(!_loc19_)
                                 {
                                    §§push(this.§+Y§);
                                    if(!_loc19_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc19_)
                                       {
                                          addr306:
                                          if(_loc19_ && param1)
                                          {
                                             continue;
                                          }
                                          _loc10_ = §§pop();
                                          if(_loc20_ || _loc3_)
                                          {
                                             loop39:
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(!_loc19_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc20_ || param1)
                                                   {
                                                      if((§§pop()[§§pop()] as Array).length < _loc10_)
                                                      {
                                                         if(!(_loc19_ && param2))
                                                         {
                                                            §§push(param1);
                                                            if(!_loc19_)
                                                            {
                                                               addr286:
                                                               §§push(_loc3_);
                                                               if(!_loc19_)
                                                               {
                                                                  addr289:
                                                                  §§push(int((§§pop()[§§pop()] as Array).length));
                                                                  loop41:
                                                                  while(true)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(!_loc19_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§-!Z§);
                                                                           if(!_loc19_)
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 continue loop41;
                                                                              }
                                                                              if(§§pop() == §!k§)
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§push(this.§'!;§);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    addr239:
                                                                                    addr241:
                                                                                    addr240:
                                                                                    addr883:
                                                                                    §§push(int(§§pop() / 2));
                                                                                    if(_loc20_ || _loc3_)
                                                                                    {
                                                                                       addr249:
                                                                                       _loc9_ = §§pop();
                                                                                       if(_loc20_ || this)
                                                                                       {
                                                                                       }
                                                                                       _loc7_.§@!n§(this.§+Y§,this.§ <§,this.§-!f§,this.§@!X§ * this.§`m§,this.§@!X§ * this.§;! §,this.§-a§,this.§@!X§);
                                                                                       addr902:
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          break loop2;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    while(§§pop() < (param1[_loc3_] as Array).length)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       §§push(_loc3_);
                                                                                       break loop39;
                                                                                    }
                                                                                    if(_loc20_ || param2)
                                                                                    {
                                                                                       addr897:
                                                                                       _loc8_.§@G§("");
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr902);
                                                                                    addr883:
                                                                                 }
                                                                                 break loop2;
                                                                              }
                                                                              §§push(0);
                                                                              if(_loc20_ || _loc3_)
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 if(!(_loc20_ || _loc3_))
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr882);
                                                                              }
                                                                              §§goto(addr883);
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                        addr190:
                                                                     }
                                                                     §§goto(addr897);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr286);
                                             }
                                             while(true)
                                             {
                                                _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                if(!_loc19_)
                                                {
                                                   if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                   {
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         _loc7_.§&O§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                         if(!(_loc19_ && this))
                                                         {
                                                            addr402:
                                                         }
                                                      }
                                                      §§goto(addr402);
                                                   }
                                                   else
                                                   {
                                                      _loc7_.§&O§.push(new param2(_loc12_,_loc7_,new this.§default§() as MovieClip));
                                                   }
                                                   _loc13_ = _loc7_.§&O§[_loc7_.§&O§.length - 1] as §8!k§;
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      §§push(param1);
                                                      if(_loc20_ || _loc3_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc20_)
                                                         {
                                                            if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                            {
                                                               if(!_loc19_)
                                                               {
                                                                  addr468:
                                                                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                  if(_loc20_)
                                                                  {
                                                                     _loc13_.setIcon(_loc14_,this.§4!§);
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]N§);
                                                                        if(!(_loc19_ && param1))
                                                                        {
                                                                           if(§§pop() == §`f§)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(2);
                                                                              }
                                                                              addr545:
                                                                           }
                                                                           addr554:
                                                                           §§push(this.§-a§);
                                                                           if(_loc20_)
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc20_)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       _loc13_.x = _loc9_ + _loc11_ * this.§`m§;
                                                                                       if(!(_loc19_ && this))
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          §§push(this.§ g§);
                                                                                          if(!(_loc19_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() + _loc11_ * this.§;! §);
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc8_.§ get§(_loc13_);
                                                                                                loop20:
                                                                                                while(_loc20_ || param1)
                                                                                                {
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   _loc11_++;
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr584:
                                                                                                   if(!(_loc19_ && param2))
                                                                                                   {
                                                                                                      if(!(_loc20_ || _loc3_))
                                                                                                      {
                                                                                                         break loop19;
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      §§goto(addr882);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc20_ || param2)
                                                                                                      {
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            addr705:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc13_);
                                                                                                               §§push(_loc9_ + _loc18_ * this.§`m§);
                                                                                                               if(!(_loc19_ && param2))
                                                                                                               {
                                                                                                                  §§push(_loc16_ * this.§+Y§);
                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * this.§`m§);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§pop().x = §§pop();
                                                                                                               break loop20;
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         addr700:
                                                                                                      }
                                                                                                      break;
                                                                                                      §§goto(addr584);
                                                                                                   }
                                                                                                   for(; _loc20_ || param2; §§goto(addr657))
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(this.§ g§);
                                                                                                      if(_loc20_ || param2)
                                                                                                      {
                                                                                                         §§push(_loc18_);
                                                                                                         if(_loc20_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§;! §);
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  addr656:
                                                                                                                  §§push(_loc16_ * this.§+Y§);
                                                                                                                  if(_loc20_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr652:
                                                                                                                     §§push(§§pop() * this.§;! §);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop() + §§pop();
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr656);
                                                                                                            }
                                                                                                            §§goto(addr652);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr656);
                                                                                                   }
                                                                                                   addr657:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!this.§^!'§)
                                                                                                      {
                                                                                                         _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr705);
                                                                                                   }
                                                                                                   addr680:
                                                                                                }
                                                                                                while(_loc20_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(this.§ g§);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                   }
                                                                                                }
                                                                                                addr864:
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   addr835:
                                                                                                   loop5:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      addr836:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§+Y§);
                                                                                                         addr838:
                                                                                                         addr860:
                                                                                                         while(_loc20_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§-a§);
                                                                                                               addr843:
                                                                                                               addr771:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr844:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     addr845:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§+Y§);
                                                                                                                        addr847:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           addr848:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              addr849:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc17_ = §§pop();
                                                                                                                                 break loop19;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               if(!(_loc20_ || param2))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc20_ || this)
                                                                                                               {
                                                                                                                  §§push(this.§-a§);
                                                                                                                  if(_loc20_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr795:
                                                                                                                     §§push(§§pop() - §§pop() * §§pop());
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        if(_loc20_ || this)
                                                                                                                        {
                                                                                                                           if(_loc20_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(this.§+Y§);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    addr819:
                                                                                                                                    addr820:
                                                                                                                                    §§push(int(§§pop() % §§pop()));
                                                                                                                                    if(!(_loc20_ || this))
                                                                                                                                    {
                                                                                                                                       §§goto(addr849);
                                                                                                                                    }
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       continue loop5;
                                                                                                                                    }
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       §§goto(addr832);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr863:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                          continue loop4;
                                                                                                                                       }
                                                                                                                                       addr863:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr847);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr863);
                                                                                                                              }
                                                                                                                              addr862:
                                                                                                                           }
                                                                                                                           §§goto(addr845);
                                                                                                                        }
                                                                                                                        §§goto(addr848);
                                                                                                                     }
                                                                                                                     §§goto(addr819);
                                                                                                                  }
                                                                                                                  §§goto(addr843);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr862);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr861);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                if(_loc20_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc16_);
                                                                                                   if(!(_loc19_ && this))
                                                                                                   {
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(this.§+Y§);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc20_ || param2)
                                                                                                            {
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§goto(addr771);
                                                                                                               }
                                                                                                               §§goto(addr844);
                                                                                                            }
                                                                                                            §§goto(addr795);
                                                                                                         }
                                                                                                         §§goto(addr838);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr858:
                                                                                                      }
                                                                                                      §§goto(addr860);
                                                                                                   }
                                                                                                   §§goto(addr836);
                                                                                                }
                                                                                                §§goto(addr820);
                                                                                             }
                                                                                             §§goto(addr861);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr700);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§goto(addr858);
                                                                                       §§push(this.§+Y§);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr863);
                                                                              }
                                                                              §§goto(addr836);
                                                                           }
                                                                           §§goto(addr835);
                                                                        }
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              loop34:
                                                                              while(true)
                                                                              {
                                                                                 _loc14_.y -= _loc14_.height / 2;
                                                                                 while(!_loc19_)
                                                                                 {
                                                                                    if(this.§4!§ == null)
                                                                                    {
                                                                                       if(!(_loc19_ && param2))
                                                                                       {
                                                                                          if(!(_loc19_ && _loc3_))
                                                                                          {
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                break loop34;
                                                                                             }
                                                                                             continue loop30;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       addr518:
                                                                                       while(true)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop34;
                                                                                          }
                                                                                          §§goto(addr554);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr554);
                                                                                 }
                                                                                 continue loop32;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc14_.y -= _loc15_;
                                                                     §§goto(addr518);
                                                                  }
                                                               }
                                                               §§goto(addr864);
                                                            }
                                                            §§goto(addr554);
                                                         }
                                                      }
                                                      §§goto(addr468);
                                                   }
                                                   §§goto(addr737);
                                                }
                                                §§goto(addr402);
                                             }
                                             addr321:
                                          }
                                          §§goto(addr897);
                                       }
                                       §§goto(addr883);
                                    }
                                    §§goto(addr306);
                                 }
                                 break;
                              }
                           }
                        }
                        _loc3_++;
                        continue;
                     }
                     §§goto(addr321);
                  }
                  return;
               }
               §§goto(addr107);
            }
            this.§3,§ = new Vector.<§7W§>();
            if(_loc20_ || this)
            {
               §§goto(addr78);
            }
            §§goto(addr107);
         }
         §§goto(addr78);
      }
      
      public function get §>!w§() : int
      {
         return this.§+Y§;
      }
      
      public function get §+1§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§>!w§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == 0)
               {
                  if(_loc2_)
                  {
                     §§push(0);
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         addr54:
         §§push(this.§1!@§(this.§]E§).§3w§.length / this.§>!w§);
         if(!(_loc1_ && _loc2_))
         {
            return §§pop() + 1;
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§7W§ = null;
         var _loc4_:§;!=§ = getItemByName(this.§]E§) as §;!=§;
         if(!(_loc7_ && param3))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase() == "SCROLL_LEFT")
               {
                  if(!_loc7_)
                  {
                     if(_loc4_)
                     {
                        addr190:
                        _loc4_.§`4§(_loc4_.§<#§ - 1);
                        this.§[s§();
                        addr195:
                     }
                     addr261:
                     super.containerEventOccured(param1,param2,param3);
                     §§goto(addr266);
                  }
                  §§goto(addr190);
               }
               else
               {
                  §§push(param2);
                  while(true)
                  {
                     if(§§pop().toUpperCase() != "SCROLL_RIGHT")
                     {
                        §§push(param2);
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     if(!_loc7_)
                     {
                        if(_loc4_)
                        {
                           if(!(_loc7_ && param1))
                           {
                              _loc4_.§`4§(_loc4_.§<#§ + 1);
                              if(_loc7_)
                              {
                              }
                              §§goto(addr266);
                           }
                           this.§[s§();
                           if(!_loc7_)
                           {
                              if(_loc7_)
                              {
                                 §§goto(addr190);
                              }
                           }
                           addr266:
                           return;
                        }
                        break;
                     }
                  }
                  §§goto(addr261);
               }
            }
         }
         §§goto(addr190);
      }
      
      public function §-!n§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§;!=§ = getItemByName(param1) as §;!=§;
         if(!_loc5_)
         {
            if(_loc3_)
            {
               if(_loc4_ || _loc3_)
               {
                  _loc3_.§`4§(param2);
               }
               do
               {
                  this.§[s§();
               }
               while(!(_loc4_ || _loc3_));
               
               addr60:
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function §1!@§(param1:String) : §7W§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§3,§.length)
            {
               if(!(_loc3_ && this))
               {
                  return null;
               }
               loop1:
               while(_loc3_ && this)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(param1.toUpperCase() == (this.§3,§[_loc2_] as §7W§).mName.toUpperCase())
            {
               break;
            }
            §§goto(addr47);
         }
         while(!(_loc3_ && param1));
         
         return this.§3,§[_loc2_] as §7W§;
      }
      
      public function §-U§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§]E§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §&O§.length)
            {
               if(!(_loc4_ && _loc2_))
               {
                  this.§[s§();
               }
               if(!(_loc4_ && _loc2_))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§=j§);
                           if(_loc3_ || param1)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§;f§.y = (§&O§[_loc2_] as §;!=§).y + this.§5E§;
                                       addr157:
                                       while(true)
                                       {
                                          this.§;f§.height = (§&O§[_loc2_] as §;!=§).height + this.§ t§;
                                          addr119:
                                          while(!(_loc4_ && _loc3_))
                                          {
                                          }
                                          addr183:
                                          addr228:
                                          if(_loc3_)
                                          {
                                             this.§;f§.x = (§&O§[_loc2_] as §;!=§).x + this.§&=§;
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                addr235:
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(this.§5!E§);
                                                   addr182:
                                                   while(§§pop())
                                                   {
                                                      §§goto(addr183);
                                                      continue loop12;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             addr207:
                                          }
                                          while(true)
                                          {
                                             (§&O§[_loc2_] as §;!=§).setActiveStatus(true);
                                             §§goto(addr235);
                                          }
                                       }
                                       addr68:
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(_loc3_ || param1)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                                 while(true)
                                 {
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          if((§&O§[_loc2_] as §;!=§).mName.toUpperCase() != param1.toUpperCase())
                                          {
                                             (§&O§[_loc2_] as §;!=§).setActiveStatus(false);
                                             loop10:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr95:
                                                   while(true)
                                                   {
                                                      _loc2_++;
                                                      addr64:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr68);
                                                         }
                                                         §§goto(addr119);
                                                      }
                                                      continue loop0;
                                                      §§goto(addr95);
                                                   }
                                                   addr62:
                                                }
                                                §§goto(addr157);
                                             }
                                          }
                                          §§goto(addr228);
                                       }
                                       addr218:
                                    }
                                 }
                                 addr217:
                              }
                              §§goto(addr62);
                           }
                           §§goto(addr182);
                        }
                     }
                     §§goto(addr218);
                  }
               }
               §§goto(addr64);
            }
            else
            {
               §§push(§&O§[_loc2_] is §;!=§);
            }
            §§goto(addr217);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7W§ = null;
         if(_loc6_)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§3,§)
         {
            if(_loc6_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §[s§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr39);
                  }
               }
               §§goto(addr52);
            }
            addr39:
            §§pop();
            if(_loc2_ || _loc2_)
            {
               addr52:
               if(getItemByName("Button_Scroll2") == null)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     addr61:
                     var _loc1_:§;!=§ = getItemByName(this.§]E§) as §;!=§;
                     if(!(_loc3_ && _loc1_))
                     {
                        if(!_loc1_)
                        {
                           (getItemByName("Button_Scroll1") as §[!i§).setComponentState(§-0§.§6!q§);
                           loop0:
                           for(; !(_loc3_ && _loc3_); (getItemByName("Button_Scroll2") as §[!i§).setComponentState(§-0§.§6!q§),if(_loc3_)
                           {
                              continue;
                           },§§goto(addr77))
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 addr77:
                                 while(true)
                                 {
                                    (getItemByName("Button_Scroll2") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 }
                                 return;
                                 addr158:
                                 addr103:
                              }
                              while(true)
                              {
                                 if(_loc3_ && this)
                                 {
                                    while(true)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(_loc1_.§<#§);
                                          if(!_loc3_)
                                          {
                                             §§push(_loc1_.§7!=§);
                                             if(!_loc3_)
                                             {
                                                if(§§pop() >= §§pop() - 1)
                                                {
                                                   (getItemByName("Button_Scroll2") as §[!i§).setComponentState(§-0§.§6!q§);
                                                   break loop0;
                                                }
                                                §§goto(addr158);
                                             }
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   break loop3;
                                                }
                                                if(_loc2_)
                                                {
                                                   (getItemByName("Button_Scroll1") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                }
                                                while(true)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             addr201:
                                          }
                                          addr200:
                                          while(true)
                                          {
                                             §§goto(addr201);
                                          }
                                       }
                                       (getItemByName("Button_Scroll1") as §[!i§).setComponentState(§-0§.§6!q§);
                                    }
                                 }
                                 §§goto(addr103);
                              }
                           }
                           while(true)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§goto(addr200);
                                    }
                                    addr198:
                                 }
                                 else
                                 {
                                    addr146:
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr212);
                           }
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr146);
                  }
               }
               §§goto(addr61);
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function §+!%§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!=§ = null;
         var _loc1_:* = int(§&O§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = §&O§[_loc1_] as §;!=§;
            if(_loc4_ || this)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     _loc2_.clear();
                     addr101:
                     loop5:
                     while(true)
                     {
                        addr74:
                        while(true)
                        {
                           §&O§.splice(_loc1_,1);
                           addr89:
                           addr96:
                           while(!(_loc4_ || _loc3_))
                           {
                              continue loop5;
                           }
                           continue loop5;
                        }
                     }
                     addr65:
                     if(_loc3_ && _loc1_)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr74);
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc4_ || this)
                  {
                     §§goto(addr65);
                  }
                  §§goto(addr89);
                  §§goto(addr96);
               }
               continue;
            }
            §§goto(addr101);
         }
         if(!(_loc3_ && _loc2_))
         {
            this.§-U§("");
         }
      }
      
      public function §;!Y§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7W§ = null;
         for each(_loc1_ in this.§3,§)
         {
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.§;!Y§();
            }
         }
      }
      
      public function §!!!§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§1!@§(this.§]E§));
            while(§§pop() != null)
            {
               §§push(this.§1!@§(this.§]E§));
               if(_loc2_)
               {
                  return §§pop().§^"#§();
               }
            }
            §<m§.log("ERROR! Tried to get selections for noninited repeater!");
         }
         return new Array();
      }
      
      public function §,!§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!@§(this.§]E§).§,!§(param1);
         }
      }
      
      public function §1!^§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!@§(this.§]E§).§1!^§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.clear();
         }
         while(true)
         {
            this.§default§ = null;
            while(_loc2_ || _loc2_)
            {
               this.§3,§ = null;
               while(_loc2_ || this)
               {
                  this.§2!G§ = null;
                  if(!_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
