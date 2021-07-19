package §%i§
{
   import §+!c§.§;!=§;
   import §1!t§.§!!G§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §1!t§.§=",§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §7!t§ extends §0!Y§
   {
      
      public static const §;";§:int = 0;
      
      public static const §@![§:int = 1;
      
      public static const §2"W§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;";§ = 0;
            while(true)
            {
               §@![§ = 1;
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            §2"W§ = 2;
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §@!m§:String;
      
      public var §&i§:Class;
      
      public var §6!d§:String = null;
      
      public var §7"9§:Vector.<§=",§>;
      
      public var § !`§:int;
      
      public var §6!-§:Number;
      
      public var §4"F§:Number;
      
      public var §,s§:Number;
      
      public var §6,§:Number;
      
      public var §9!K§:Number;
      
      public var §?!x§:Number;
      
      public var § "#§:Number;
      
      public var §7"O§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §2!k§:int;
      
      public var §>"0§:Number;
      
      public var §9!?§:String = "";
      
      public var §2!O§:int;
      
      public var §+!G§:int;
      
      public var §`!D§:GlowFilter;
      
      public var §-N§:Boolean = true;
      
      public var §+!B§:int;
      
      public var §5`§:int;
      
      public var §"e§:Number = 0;
      
      public var §&!?§:Number = 0;
      
      public var §`!h§:Number = 0;
      
      public var §[!s§:Number = 0;
      
      public var §@!h§:Boolean = false;
      
      public var §<"L§:Boolean = false;
      
      public var §`!&§:MovieClip = null;
      
      public function §7!t§(param1:XML, param2:§0!Y§, param3:§`_§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §%%§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§+"6§ = null;
         var _loc8_:§=",§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§4!w§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         if(!(_loc20_ && param1))
         {
            if(param2 == null)
            {
               if(_loc19_)
               {
                  param2 = §4!w§;
                  addr69:
                  this.§7"9§ = new Vector.<§=",§>();
                  if(_loc19_)
                  {
                     addr77:
                     this.§=!o§();
                     if(_loc19_ || _loc3_)
                     {
                        §§push(param1);
                        if(_loc19_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc19_)
                              {
                                 addr93:
                                 param1 = getParentView().getRepeaterDataXML(mName);
                              }
                              §§goto(addr101);
                           }
                           §§push(param1);
                        }
                        if(!§§pop())
                        {
                           addr101:
                           param1 = new Array();
                           §§goto(addr105);
                        }
                        addr105:
                        var _loc3_:int = 0;
                        loop0:
                        while(true)
                        {
                           if(_loc3_ >= param1.length)
                           {
                              if(!(_loc20_ && _loc3_))
                              {
                                 break;
                              }
                              §§goto(addr936);
                           }
                           §§push(mName + "_Tab_");
                           if(!_loc20_)
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           _loc4_ = §§pop();
                           if(!_loc19_)
                           {
                              break;
                           }
                           _loc5_ = new MovieClip();
                           (_loc6_ = <Container/>).@name = _loc4_;
                           _loc7_ = new §+"6§(_loc6_,this,null,_loc5_);
                           if(_loc19_ || param2)
                           {
                              §+?§.push(_loc7_);
                           }
                           _loc8_ = new §=",§(this.§5`§,_loc4_);
                           if(!(_loc20_ && _loc3_))
                           {
                              this.§7"9§.push(_loc8_);
                              loop1:
                              while(true)
                              {
                                 §§push(this.§9!K§);
                                 addr299:
                                 loop2:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    if(!(_loc20_ && param1))
                                    {
                                       _loc9_ = §§pop();
                                       if(!(_loc20_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             §§push(this.§ !`§);
                                             if(_loc19_ || param2)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc19_)
                                                {
                                                   _loc10_ = §§pop();
                                                   loop31:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(_loc19_ || param2)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc19_ || _loc3_)
                                                         {
                                                            if((§§pop()[§§pop()] as Array).length < _loc10_)
                                                            {
                                                               loop32:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  if(!_loc20_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc19_ || _loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(int((§§pop()[§§pop()] as Array).length));
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    loop33:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§+!G§);
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() == §;";§)
                                                                                          {
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                continue loop32;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          loop36:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc19_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      if(!(_loc20_ && param2))
                                                                                                      {
                                                                                                         _loc11_ = §§pop();
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr861:
                                                                                                            }
                                                                                                            continue loop33;
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         addr920:
                                                                                                         _loc3_++;
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue loop38;
                                                                                                   }
                                                                                                   continue loop34;
                                                                                                }
                                                                                                addr232:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop36;
                                                                                                   }
                                                                                                   §§goto(addr920);
                                                                                                }
                                                                                                continue loop31;
                                                                                                §§goto(addr920);
                                                                                             }
                                                                                             break loop2;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr190:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr881:
                                                                              _loc7_.§2"[§(this.§ !`§,this.§6!-§,this.§4"F§,this.§+!B§ * this.§ "#§,this.§+!B§ * this.§7"O§,this.§2!k§,this.§+!B§);
                                                                              if(_loc20_ && this)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr920);
                                                                           }
                                                                           addr272:
                                                                        }
                                                                        addr325:
                                                                        _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                                        if(!_loc20_)
                                                                        {
                                                                           if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                                           {
                                                                              if(_loc19_ || param1)
                                                                              {
                                                                                 _loc7_.§+?§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                                 if(_loc19_ || _loc3_)
                                                                                 {
                                                                                    addr386:
                                                                                 }
                                                                                 addr398:
                                                                                 _loc13_ = _loc7_.§+?§[_loc7_.§+?§.length - 1] as §4!w§;
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                                          {
                                                                                             if(_loc19_ || _loc3_)
                                                                                             {
                                                                                                addr437:
                                                                                                _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                {
                                                                                                   _loc13_.setIcon(_loc14_,this.§6!d§);
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§2!O§);
                                                                                                      if(!(_loc20_ && param1))
                                                                                                      {
                                                                                                         if(§§pop() == §@![§)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(2);
                                                                                                            }
                                                                                                            addr527:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc15_ = §§pop();
                                                                                                         while(!_loc20_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc14_.y -= _loc14_.height / 2;
                                                                                                            }
                                                                                                            addr480:
                                                                                                            if(!(_loc20_ && param1))
                                                                                                            {
                                                                                                               _loc14_.y -= _loc15_;
                                                                                                               addr493:
                                                                                                               if(_loc20_ && _loc3_)
                                                                                                               {
                                                                                                                  while(this.§6!d§ == null)
                                                                                                                  {
                                                                                                                     if(_loc19_ || this)
                                                                                                                     {
                                                                                                                        §§goto(addr480);
                                                                                                                     }
                                                                                                                     §§goto(addr493);
                                                                                                                  }
                                                                                                               }
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr504);
                                                                                                                  }
                                                                                                                  break loop23;
                                                                                                               }
                                                                                                               continue loop25;
                                                                                                               break loop23;
                                                                                                               addr514:
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                   }
                                                                                                   addr538:
                                                                                                   §§push(this.§2!k§);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(!(_loc20_ && param1))
                                                                                                            {
                                                                                                               addr558:
                                                                                                               _loc13_.x = _loc9_ + _loc11_ * this.§ "#§;
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  §§push(this.§?!x§);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc11_ * this.§7"O§);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  loop29:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop6:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc8_.§4!"§(_loc13_);
                                                                                                                        loop7:
                                                                                                                        while(!(_loc20_ && this))
                                                                                                                        {
                                                                                                                           if(!(_loc20_ && _loc3_))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc11_++;
                                                                                                                                 if(!(_loc19_ || this))
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          break loop6;
                                                                                                                                       }
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    §§push(this.§?!x§);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    loop5:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       loop20:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          loop18:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc20_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                while(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§2!k§);
                                                                                                                                                      addr844:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr845:
                                                                                                                                                         loop12:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            addr846:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                               addr847:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                               continue loop12;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr835:
                                                                                                                                                _loc17_ = (§§pop() - §§pop() * this.§ !`§ * this.§2!k§) / this.§ !`§;
                                                                                                                                                addr833:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(_loc20_)
                                                                                                                                                      {
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§ !`§);
                                                                                                                                                            if(_loc19_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc20_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§2!k§);
                                                                                                                                                                           if(_loc19_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr776:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc20_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§ !`§);
                                                                                                                                                                                          if(!(_loc20_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr800:
                                                                                                                                                                                             §§push(§§pop() % §§pop());
                                                                                                                                                                                             if(!(_loc20_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr808:
                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr833);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr833);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr846);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr833);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr833);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr800);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr833);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr833);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr833);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr845);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr833);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr833);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr776);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr844);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr833);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr833);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr822);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr847);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr808);
                                                                                                                                                }
                                                                                                                                                addr822:
                                                                                                                                                addr810:
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!this.§-N§)
                                                                                                                                                   {
                                                                                                                                                      _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                         §§push(this.§?!x§);
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * this.§7"O§);
                                                                                                                                                               if(_loc19_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr640:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc20_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     addr631:
                                                                                                                                                                     §§push(_loc16_ * this.§ !`§);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * this.§7"O§);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr640);
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr631);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr640);
                                                                                                                                                      }
                                                                                                                                                      continue loop5;
                                                                                                                                                      addr664:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr810);
                                                                                                                                                }
                                                                                                                                                continue loop5;
                                                                                                                                                addr836:
                                                                                                                                                addr811:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr840:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr842);
                                                                                                                                             }
                                                                                                                                             §§goto(addr842);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr602:
                                                                                                                           }
                                                                                                                           while(_loc20_ && param1)
                                                                                                                           {
                                                                                                                              §§goto(addr811);
                                                                                                                           }
                                                                                                                           §§push(_loc13_);
                                                                                                                           §§push(_loc9_ + _loc18_ * this.§ "#§);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              §§push(_loc16_ * this.§ !`§);
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§ "#§);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           §§goto(addr711);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              §§goto(addr643);
                                                                                                                           }
                                                                                                                           §§goto(addr664);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr861);
                                                                                                                  }
                                                                                                                  addr860:
                                                                                                               }
                                                                                                               §§goto(addr711);
                                                                                                            }
                                                                                                            §§goto(addr602);
                                                                                                         }
                                                                                                         §§goto(addr840);
                                                                                                         §§push(_loc11_);
                                                                                                      }
                                                                                                      §§goto(addr842);
                                                                                                   }
                                                                                                   §§goto(addr847);
                                                                                                }
                                                                                                §§goto(addr514);
                                                                                                addr436:
                                                                                             }
                                                                                             §§goto(addr558);
                                                                                          }
                                                                                          §§goto(addr538);
                                                                                       }
                                                                                       §§goto(addr437);
                                                                                    }
                                                                                    §§goto(addr436);
                                                                                 }
                                                                                 §§goto(addr860);
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                           _loc7_.§+?§.push(new param2(_loc12_,_loc7_,new this.§&i§() as MovieClip));
                                                                           §§goto(addr398);
                                                                        }
                                                                        §§goto(addr386);
                                                                     }
                                                                     addr264:
                                                                  }
                                                                  break;
                                                               }
                                                               addr324:
                                                               §§goto(addr325);
                                                               §§push(_loc3_);
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                }
                                                break loop2;
                                             }
                                             break loop2;
                                          }
                                          addr315:
                                       }
                                       §§goto(addr920);
                                    }
                                    break;
                                 }
                                 while(§§pop() < (param1[_loc3_] as Array).length)
                                 {
                                    §§goto(addr324);
                                    §§push(param1);
                                    §§goto(addr861);
                                 }
                                 if(!(_loc20_ && param1))
                                 {
                                    _loc8_.§1!a§("");
                                    if(!_loc19_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr881);
                                 }
                                 §§goto(addr920);
                              }
                           }
                           §§goto(addr315);
                        }
                        if(param1.length > 1)
                        {
                        }
                        addr936:
                        return;
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr101);
            }
            §§goto(addr69);
         }
         §§goto(addr77);
      }
      
      public function get §+"C§() : int
      {
         return this.§ !`§;
      }
      
      public function get §'!h§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§+"C§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr58);
                  }
               }
               §§push(this.§0j§(this.§9!?§).§'!-§.length / this.§+"C§);
               if(!_loc1_)
               {
                  return §§pop() + 1;
               }
            }
            §§goto(addr58);
         }
         addr58:
         return 0;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§=",§ = null;
         var _loc4_:§+"6§ = getItemByName(this.§9!?§) as §+"6§;
         if(_loc6_)
         {
            §§push(param2);
            loop0:
            for(; §§pop().toUpperCase() != "SCROLL_LEFT"; if(!(_loc6_ || param3))
            {
               continue;
            },§§push(§§pop().length > 0),if(_loc6_)
            {
               §§push(§§pop());
               loop3:
               while(true)
               {
                  if(§§pop())
                  {
                     addr153:
                     while(true)
                     {
                        §§pop();
                     }
                     addr153:
                  }
                  else
                  {
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && param2))
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          if(_loc6_ || param3)
                                          {
                                             if(true)
                                             {
                                                §§push(param3 is §!>§);
                                                break loop4;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr181);
                                          }
                                       }
                                       else
                                       {
                                          addr154:
                                          while(true)
                                          {
                                          }
                                          addr154:
                                       }
                                       while(true)
                                       {
                                          §§push(param1);
                                          addr91:
                                          while(true)
                                          {
                                             §§push(§§pop() == §""B§.LISTENER_EVENT_MOUSE_DOWN);
                                             addr94:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr154);
                                       }
                                    }
                                    break;
                                    addr39:
                                    §§push(§§pop() == §""B§.LISTENER_EVENT_MOUSE_UP);
                                    if(_loc7_ && param1)
                                    {
                                       continue;
                                    }
                                    if(_loc7_)
                                    {
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             §§pop();
                                             if(!(_loc7_ && param3))
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§goto(addr39);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr91);
                                                         }
                                                      }
                                                      addr117:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr210);
                                             }
                                             break loop5;
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr154);
                                       addr103:
                                    }
                                    if(!(_loc7_ && param1))
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr94);
                                 }
                                 §§goto(addr281);
                              }
                              break;
                           }
                           break;
                        }
                        continue loop3;
                     }
                     if(§§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           §§push(Boolean(_loc5_ = this.§0j§((param3 as §!>§).mParentContainer.mName.toUpperCase())));
                           if(_loc6_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc7_ && param3))
                                 {
                                    addr255:
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       addr261:
                                       if(param3 is §4!w§)
                                       {
                                          if(_loc7_ && param3)
                                          {
                                          }
                                       }
                                       §§goto(addr276);
                                    }
                                    _loc5_.§1!a§((param3 as §!>§).mName.toUpperCase());
                                    §§goto(addr276);
                                 }
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr255);
                        }
                        addr281:
                        return;
                     }
                     §§goto(addr276);
                     addr58:
                  }
                  §§goto(addr154);
               }
            },§§goto(addr153))
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(§§pop().toUpperCase() == "SCROLL_RIGHT")
                  {
                     if(!_loc7_)
                     {
                        if(!(_loc7_ && this))
                        {
                           if(_loc4_)
                           {
                              addr181:
                              _loc4_.§;!i§(_loc4_.§6"B§ + 1);
                              while(_loc6_ || param2)
                              {
                                 this.§[3§();
                                 if(_loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       addr118:
                                       break loop1;
                                    }
                                    break loop0;
                                 }
                              }
                              addr205:
                              _loc4_.§;!i§(_loc4_.§6"B§ - 1);
                              this.§[3§();
                              break;
                              addr198:
                              addr210:
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr281);
                  }
                  §§push(param2);
                  if(!(_loc7_ && param2))
                  {
                     continue loop0;
                  }
               }
               super.containerEventOccured(param1,param2,param3);
               §§goto(addr281);
            }
            if(_loc4_)
            {
               §§goto(addr205);
            }
            §§goto(addr181);
         }
         §§goto(addr117);
      }
      
      public function §&1§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§+"6§ = getItemByName(param1) as §+"6§;
         if(_loc4_ || this)
         {
            if(_loc3_)
            {
               do
               {
                  _loc3_.§;!i§(param2);
                  do
                  {
                     this.§[3§();
                  }
                  while(!(_loc4_ || this));
                  
               }
               while(!_loc4_);
               
               addr67:
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §0j§(param1:String) : §=",§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§7"9§.length)
            {
               if(!(_loc4_ || this))
               {
                  continue;
               }
               if(!(_loc3_ && param1))
               {
                  return null;
               }
            }
            else if(param1.toUpperCase() == (this.§7"9§[_loc2_] as §=",§).mName.toUpperCase())
            {
               break;
            }
            _loc2_++;
         }
         while(!_loc3_);
         
         return this.§7"9§[_loc2_] as §=",§;
      }
      
      public function §@"W§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§9!?§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §+?§.length)
            {
               if(_loc3_ || _loc2_)
               {
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§[3§();
                        addr56:
                        if(_loc3_ || param1)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              break;
                           }
                           loop14:
                           while(true)
                           {
                              (§+?§[_loc2_] as §+"6§).setActiveStatus(true);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§@!h§);
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(!_loc4_)
                                       {
                                          this.§`!&§.x = (§+?§[_loc2_] as §+"6§).x + this.§`!h§;
                                          loop9:
                                          while(true)
                                          {
                                             this.§`!&§.width = (§+?§[_loc2_] as §+"6§).width + this.§"e§;
                                             addr163:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   break loop9;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       continue loop6;
                                       addr175:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§<"L§);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                this.§`!&§.y = (§+?§[_loc2_] as §+"6§).y + this.§[!s§;
                                                addr142:
                                                while(!(_loc3_ || this))
                                                {
                                                   §§goto(addr175);
                                                }
                                                this.§`!&§.height = (§+?§[_loc2_] as §+"6§).height + this.§&!?§;
                                                loop3:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         while((§+?§[_loc2_] as §+"6§).mName.toUpperCase() == param1.toUpperCase())
                                                         {
                                                            continue loop14;
                                                         }
                                                         addr78:
                                                         (§+?§[_loc2_] as §+"6§).setActiveStatus(false);
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc2_++;
                                                               addr73:
                                                               while(!_loc3_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr78);
                                                         }
                                                         addr208:
                                                         addr86:
                                                      }
                                                      §§goto(addr71);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr142);
                                                   }
                                                }
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
                                                §§goto(addr208);
                                             }
                                          }
                                          addr207:
                                       }
                                       §§goto(addr71);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr73);
               }
               §§goto(addr56);
            }
            else
            {
               §§push(§+?§[_loc2_] is §+"6§);
            }
            §§goto(addr207);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§=",§ = null;
         if(!_loc6_)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§7"9§)
         {
            if(!_loc6_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §[3§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc3_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr48:
                        if(getItemByName("Button_Scroll2") == null)
                        {
                           if(!_loc2_)
                           {
                              return;
                           }
                        }
                     }
                     var _loc1_:§+"6§ = getItemByName(this.§9!?§) as §+"6§;
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_)
                        {
                           (getItemByName("Button_Scroll1") as §7"0§).setComponentState(§!!G§.§[E§);
                           loop0:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          continue;
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc1_.§6"B§);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§push(_loc1_.§<'§);
                                                if(_loc3_ || this)
                                                {
                                                   break;
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         (getItemByName("Button_Scroll1") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                         continue loop5;
                                                      }
                                                      addr225:
                                                   }
                                                   else
                                                   {
                                                      (getItemByName("Button_Scroll1") as §7"0§).setComponentState(§!!G§.§[E§);
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            break loop3;
                                                         }
                                                         addr221:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_.§6"B§);
                                                            continue loop3;
                                                         }
                                                      }
                                                      addr211:
                                                   }
                                                }
                                                continue;
                                                addr224:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr224);
                                             }
                                          }
                                          if(§§pop() < §§pop() - 1)
                                          {
                                             break loop0;
                                          }
                                          addr68:
                                          addr113:
                                          §§goto(addr159);
                                       }
                                    }
                                    §§goto(addr211);
                                 }
                                 break;
                              }
                              addr159:
                              (getItemByName("Button_Scroll2") as §7"0§).setComponentState(§!!G§.§[E§);
                              return;
                           }
                           (getItemByName("Button_Scroll2") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           §§goto(addr189);
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr189);
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §=!o§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+"6§ = null;
         var _loc1_:* = int(§+?§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = §+?§[_loc1_] as §+"6§;
            if(_loc4_ || _loc1_)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     _loc2_.clear();
                     addr96:
                     loop5:
                     while(true)
                     {
                        addr69:
                        while(true)
                        {
                           §+?§.splice(_loc1_,1);
                           addr84:
                           addr91:
                           while(_loc3_ && this)
                           {
                              continue loop5;
                           }
                           continue loop5;
                        }
                     }
                     addr60:
                     if(!(_loc4_ || _loc1_))
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr69);
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
                  if(_loc4_)
                  {
                     §§goto(addr60);
                  }
                  §§goto(addr84);
                  §§goto(addr91);
               }
               continue;
            }
            §§goto(addr96);
         }
         if(!(_loc3_ && _loc1_))
         {
            this.§@"W§("");
         }
      }
      
      public function §8;§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§=",§ = null;
         for each(_loc1_ in this.§7"9§)
         {
            if(!_loc5_)
            {
               _loc1_.§8;§();
            }
         }
      }
      
      public function §`!;§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§0j§(this.§9!?§));
            while(§§pop() != null)
            {
               §§push(this.§0j§(this.§9!?§));
               if(_loc2_ || _loc1_)
               {
                  return §§pop().§2"+§();
               }
            }
            §;!=§.log("ERROR! Tried to get selections for noninited repeater!");
         }
         return new Array();
      }
      
      public function § !>§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0j§(this.§9!?§).§ !>§(param1);
         }
      }
      
      public function §=!+§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0j§(this.§9!?§).§=!+§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            loop0:
            while(true)
            {
               this.§&i§ = null;
               while(true)
               {
                  this.§7"9§ = null;
                  while(!_loc2_)
                  {
                     continue loop0;
                     this.§`!D§ = null;
                     if(!_loc2_)
                     {
                        return;
                        addr39:
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
   }
}
