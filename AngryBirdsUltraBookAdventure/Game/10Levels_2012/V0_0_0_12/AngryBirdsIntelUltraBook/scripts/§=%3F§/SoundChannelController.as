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
            do
            {
               this.§'!T§ = param2;
               while(true)
               {
                  this.§,#§ = param3;
                  addr87:
                  while(!_loc4_)
                  {
                     this.§0[§ = this.§,#§;
                     continue loop0;
                  }
               }
            }
            while(!_loc5_);
            
            return;
         }
      }
      
      public function §'!a§() : Boolean
      {
         return this.§^I§.length < this.§'!T§;
      }
      
      public function §9!X§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §7[§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param3);
            if(!_loc8_)
            {
               if(§§pop() < 0)
               {
                  if(_loc9_ || this)
                  {
                     addr31:
                     §§push(this.§0[§);
                     if(!_loc8_)
                     {
                        addr36:
                        param3 = §§pop();
                     }
                     §§goto(addr36);
                  }
               }
               var _loc5_:SoundTransform = new SoundTransform(param3);
               var _loc6_:SoundChannel = param1.play(0,param2,_loc5_);
               if(!(_loc8_ && param1))
               {
                  if(_loc6_ == null)
                  {
                     if(!(_loc8_ && this))
                     {
                        §§goto(addr76);
                     }
                  }
                  var _loc7_:§7[§ = new §7[§(_loc6_,this.§9!B§,param4);
                  if(!(_loc8_ && param2))
                  {
                     if(this.§,#§ == 0)
                     {
                        if(!_loc8_)
                        {
                           _loc7_.§<!`§();
                        }
                        while(true)
                        {
                           §§goto(addr109);
                        }
                     }
                     addr109:
                     §§goto(addr122);
                  }
                  addr122:
                  while(true)
                  {
                     this.§^I§.push(_loc7_);
                     if(_loc9_ || param1)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return _loc7_;
               }
               addr76:
               return null;
            }
            §§goto(addr36);
         }
         §§goto(addr31);
      }
      
      private function §9!B§(param1:§7[§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§7[§> = null;
         var _loc3_:§7[§ = null;
         if(_loc5_)
         {
            if(this.§^I§.indexOf(param1) > -1)
            {
               addr51:
               _loc2_ = this.§^I§.splice(this.§^I§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               if(!_loc4_)
               {
                  _loc3_.destroy();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr51);
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
            if(!_loc3_)
            {
               _loc1_.stop();
               if(!_loc3_)
               {
                  _loc1_.§case §();
               }
            }
         }
      }
      
      public function §#!6§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7[§ = null;
         if(_loc5_ || _loc2_)
         {
            this.§,#§ = 0;
         }
         for each(_loc1_ in this.§^I§)
         {
            if(_loc5_ || this)
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
         if(_loc4_ || _loc1_)
         {
            this.§,#§ = this.§0[§;
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§^I§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.§0z§();
            }
         }
      }
   }
}
