package §=?§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundChannelController
   {
       
      
      public var mName:String;
      
      public var §'!T§:int;
      
      public var §,#§:Number = 1;
      
      private var §^I§:Vector.<§7[§>;
      
      private var §0[§:Number;
      
      public function SoundChannelController(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.mName = param1;
            loop1:
            while(true)
            {
               this.§'!T§ = param2;
               while(!_loc4_)
               {
                  this.§,#§ = param3;
                  continue loop1;
                  if(!(_loc4_ && param1))
                  {
                     return;
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function §'!a§() : Boolean
      {
         return this.§^I§.length < this.§'!T§;
      }
      
      public function §9!X§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §7[§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            §§push(param3);
            if(_loc8_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc9_)
                  {
                     addr25:
                     §§push(this.§0[§);
                     if(!_loc9_)
                     {
                        addr30:
                        param3 = §§pop();
                     }
                     §§goto(addr30);
                  }
               }
               var _loc5_:SoundTransform = new SoundTransform(param3);
               var _loc6_:SoundChannel = param1.play(0,param2,_loc5_);
               if(!(_loc9_ && param1))
               {
                  if(_loc6_ == null)
                  {
                     if(!_loc9_)
                     {
                        §§goto(addr65);
                     }
                  }
                  var _loc7_:§7[§ = new §7[§(_loc6_,this.§9!B§,param4);
                  if(!(_loc9_ && param2))
                  {
                     if(this.§,#§ == 0)
                     {
                        if(!(_loc9_ && param2))
                        {
                           addr118:
                           _loc7_.§<!`§();
                        }
                        while(true)
                        {
                        }
                        addr121:
                     }
                     while(true)
                     {
                        this.§^I§.push(_loc7_);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§goto(addr121);
                     }
                     return _loc7_;
                  }
                  §§goto(addr118);
               }
               addr65:
               return null;
            }
            §§goto(addr30);
         }
         §§goto(addr25);
      }
      
      private function §9!B§(param1:§7[§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§7[§> = null;
         var _loc3_:§7[§ = null;
         if(_loc4_ || _loc2_)
         {
            if(this.§^I§.indexOf(param1) > -1)
            {
               addr55:
               _loc2_ = this.§^I§.splice(this.§^I§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               if(_loc4_)
               {
                  _loc3_.destroy();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function § O§() : Boolean
      {
         return this.§^I§.length > 0;
      }
      
      public function §;!8§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§7[§ = null;
         while(this.§^I§.length > 0)
         {
            _loc1_ = this.§^I§[0];
            if(_loc2_)
            {
               _loc1_.stop();
               if(!(_loc3_ && _loc1_))
               {
                  _loc1_.§case §();
               }
            }
         }
      }
      
      public function §#!6§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7[§ = null;
         if(!_loc5_)
         {
            this.§,#§ = 0;
         }
         for each(_loc1_ in this.§^I§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.§<!`§();
            }
         }
      }
      
      public function §`!=§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7[§ = null;
         if(_loc4_)
         {
            this.§,#§ = this.§0[§;
         }
         for each(_loc1_ in this.§^I§)
         {
            if(_loc4_)
            {
               _loc1_.§0z§();
            }
         }
      }
   }
}
