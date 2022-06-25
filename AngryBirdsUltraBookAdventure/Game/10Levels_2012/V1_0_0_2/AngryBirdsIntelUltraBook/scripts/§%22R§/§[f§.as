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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§#!H§ = param2;
                  while(!(_loc4_ && this))
                  {
                     this.§!!Y§ = param3;
                     loop3:
                     for(; !_loc4_; while(!(_loc4_ && param1))
                     {
                        continue loop0;
                        this.§`!K§ = new Vector.<§`a§>();
                        if(_loc5_)
                        {
                           return;
                        }
                     })
                     {
                        while(true)
                        {
                           this.§1P§ = this.§!!Y§;
                           continue loop3;
                        }
                     }
                  }
               }
               if(!(_loc5_ || param3))
               {
                  continue;
               }
               §§goto(addr73);
            }
         }
         §§goto(addr80);
      }
      
      public function §']§() : Boolean
      {
         return this.§`!K§.length < this.§#!H§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §`a§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            §§push(param3);
            if(!_loc9_)
            {
               if(§§pop() < 0)
               {
                  if(_loc8_)
                  {
                     addr25:
                     §§push(this.§1P§);
                     if(!_loc9_)
                     {
                        addr30:
                        param3 = §§pop();
                     }
                     §§goto(addr30);
                  }
               }
               var _loc5_:SoundTransform = new SoundTransform(param3);
               var _loc6_:SoundChannel;
               if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
               {
                  if(_loc8_ || param2)
                  {
                     return null;
                  }
               }
               var _loc7_:§`a§ = new §`a§(_loc6_,this.§8!A§,param4);
               if(_loc8_ || param1)
               {
                  if(this.§!!Y§ == 0)
                  {
                     if(!(_loc9_ && param3))
                     {
                        _loc7_.§2!M§();
                     }
                     while(true)
                     {
                     }
                     addr117:
                  }
                  while(true)
                  {
                     this.§`!K§.push(_loc7_);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§goto(addr117);
                  }
               }
               return _loc7_;
            }
            §§goto(addr30);
         }
         §§goto(addr25);
      }
      
      private function §8!A§(param1:§`a§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§`a§> = null;
         var _loc3_:§`a§ = null;
         if(!_loc5_)
         {
            if(this.§`!K§.indexOf(param1) > -1)
            {
               addr50:
               _loc2_ = this.§`!K§.splice(this.§`!K§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               if(!_loc5_)
               {
                  _loc3_.destroy();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr50);
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
            if(_loc3_ || this)
            {
               _loc1_.stop();
               if(!(_loc2_ && this))
               {
                  _loc1_.§<@§();
               }
            }
         }
      }
      
      public function §1!@§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`a§ = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§!!Y§ = 0;
         }
         for each(_loc1_ in this.§`!K§)
         {
            if(!(_loc5_ && _loc1_))
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
            if(_loc4_ || _loc1_)
            {
               _loc1_.§<!x§();
            }
         }
      }
   }
}
