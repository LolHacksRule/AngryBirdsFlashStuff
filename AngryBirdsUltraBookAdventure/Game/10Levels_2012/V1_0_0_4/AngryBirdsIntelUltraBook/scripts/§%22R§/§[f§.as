package §"R§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §[f§
   {
       
      
      public var mName:String;
      
      public var §#!H§:int;
      
      public var §!!Y§:Number = 1;
      
      private var §`!K§:Vector.<§`a§>;
      
      private var §1P§:Number;
      
      public function §[f§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§#!H§ = param2;
                  addr79:
                  while(!_loc5_)
                  {
                  }
               }
            }
            addr89:
         }
         loop3:
         while(true)
         {
            this.§!!Y§ = param3;
            while(!_loc5_)
            {
               this.§1P§ = this.§!!Y§;
               do
               {
                  this.§`!K§ = new Vector.<§`a§>();
               }
               while(_loc5_);
               
               if(_loc5_ && this)
               {
                  continue;
               }
               if(_loc4_)
               {
                  break loop3;
               }
               §§goto(addr89);
            }
            §§goto(addr79);
         }
      }
      
      public function §']§() : Boolean
      {
         return this.§`!K§.length < this.§#!H§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §`a§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param3))
         {
            §§push(param3);
            if(!_loc9_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc9_ && param1))
                  {
                     §§push(this.§1P§);
                     if(!(_loc9_ && param3))
                     {
                        addr44:
                        §§push(Number(§§pop()));
                     }
                     param3 = §§pop();
                     addr46:
                     var _loc5_:SoundTransform = new SoundTransform(param3);
                     var _loc6_:SoundChannel;
                     if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
                     {
                        if(!(_loc9_ && param2))
                        {
                           return null;
                        }
                     }
                     var _loc7_:§`a§ = new §`a§(_loc6_,this.§8!A§,param4);
                     if(!_loc9_)
                     {
                        if(this.§!!Y§ == 0)
                        {
                           if(!(_loc9_ && param2))
                           {
                              _loc7_.§2!M§();
                              addr132:
                              while(true)
                              {
                              }
                              addr132:
                           }
                           §§goto(addr132);
                        }
                        while(true)
                        {
                           this.§`!K§.push(_loc7_);
                           if(!(_loc9_ && param3))
                           {
                              break;
                           }
                           §§goto(addr132);
                        }
                        return _loc7_;
                     }
                     §§goto(addr132);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr44);
         }
         §§goto(addr46);
      }
      
      private function §8!A§(param1:§`a§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§`a§> = null;
         var _loc3_:§`a§ = null;
         if(_loc4_)
         {
            if(this.§`!K§.indexOf(param1) > -1)
            {
               _loc2_ = this.§`!K§.splice(this.§`!K§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               addr40:
               if(!(_loc5_ && _loc3_))
               {
                  _loc3_.destroy();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §;J§() : Boolean
      {
         return this.§`!K§.length > 0;
      }
      
      public function §"!"§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§`a§ = null;
         while(this.§`!K§.length > 0)
         {
            _loc1_ = this.§`!K§[0];
            if(_loc3_)
            {
               _loc1_.stop();
               if(_loc3_ || _loc1_)
               {
                  _loc1_.§<@§();
               }
            }
         }
      }
      
      public function §1!@§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`a§ = null;
         if(_loc5_)
         {
            this.§!!Y§ = 0;
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§`!K§)
         {
            if(!(_loc4_ && _loc2_))
            {
               _loc1_.§2!M§();
            }
         }
      }
      
      public function § !#§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`a§ = null;
         if(!_loc5_)
         {
            this.§!!Y§ = this.§1P§;
         }
         for each(_loc1_ in this.§`!K§)
         {
            if(!_loc5_)
            {
               _loc1_.§<!x§();
            }
         }
      }
   }
}
