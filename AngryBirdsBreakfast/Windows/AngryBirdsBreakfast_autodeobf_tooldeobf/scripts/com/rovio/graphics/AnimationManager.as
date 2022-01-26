package com.rovio.graphics
{
   import flash.utils.Dictionary;
   
   public class AnimationManager
   {
       
      
      private var mTextureManager:TextureManager;
      
      private var mAnimations:Dictionary;
      
      public function AnimationManager(param1:TextureManager)
      {
         this.mAnimations = new Dictionary();
         super();
         this.mTextureManager = param1;
      }
      
      public function initializeAnimations() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         this.addAnimation("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         this.addAnimation("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT","SLING_HOLDER","SLING_RUBBERBAND"]);
         this.addAnimation("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
         this.addAnimation("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
         this.addAnimation("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
         this.addAnimation("SMOKE_BUFF_SMALL",["SMOKE_BUFF_1","SMOKE_BUFF_2","SMOKE_BUFF_3"]);
         for each(_loc1_ in [{
            "name":"TRAIL_",
            "count":3
         },{
            "name":"PARTICLE_WOOD_",
            "count":3
         },{
            "name":"PARTICLE_STONE_",
            "count":3
         },{
            "name":"PARTICLE_ICE_",
            "count":5
         },{
            "name":"PARTICLE_BIRDWHITE_",
            "count":3
         },{
            "name":"PARTICLE_BIRDBLUE_",
            "count":3
         },{
            "name":"PARTICLE_BIRDBLACK_",
            "count":3
         },{
            "name":"PARTICLE_BIRDRED_",
            "count":3
         },{
            "name":"PARTICLE_BIRDYELLOW_",
            "count":3
         },{
            "name":"PARTICLE_BIRDGREEN_",
            "count":3
         },{
            "name":"SMOKE_BIG_",
            "count":6
         },{
            "name":"SMOKE_SMALL_",
            "count":3
         },{
            "name":"EXPLOSION_",
            "count":7
         }])
         {
            _loc2_ = 1;
            while(_loc2_ <= _loc1_.count)
            {
               this.addAnimation(_loc1_.name + _loc2_,[_loc1_.name + _loc2_]);
               _loc2_++;
            }
         }
         this.addAnimation("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
         this.addAnimation("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
      }
      
      public function addAnimation(param1:String, param2:Array, param3:Array = null, param4:String = null) : Animation
      {
         var _loc5_:Animation = this.createAnimation(param1,param2,param3,param4);
         this.insertAnimation(param1,_loc5_);
         return _loc5_;
      }
      
      public function addContainerAnimation(param1:String, param2:Array) : void
      {
         var _loc3_:AnimationContainer = this.createContainerAnimation(param1,param2);
         this.insertAnimation(param1,_loc3_);
      }
      
      private function createAnimation(param1:String, param2:Array, param3:Array = null, param4:String = null) : Animation
      {
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc5_:Animation = new Animation(param1,this.mTextureManager);
         var _loc6_:int = 0;
         while(_loc6_ < param2.length)
         {
            _loc7_ = param2[_loc6_];
            _loc8_ = 0;
            if(param3)
            {
               _loc8_ = param3[_loc6_];
            }
            _loc5_.addFrame(_loc7_,_loc8_);
            _loc6_++;
         }
         if(param4)
         {
            _loc5_.addSound(param4);
         }
         return _loc5_;
      }
      
      private function createContainerAnimation(param1:String, param2:Array) : AnimationContainer
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc3_:AnimationContainer = new AnimationContainer(param1,this.mTextureManager);
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            if((_loc6_ = _loc4_[1]).length > 0 && _loc6_[0] is Array)
            {
               _loc3_.addAnimation(_loc5_,this.createContainerAnimation(_loc5_,_loc6_));
            }
            else
            {
               _loc7_ = null;
               _loc8_ = null;
               if(_loc4_.length > 2)
               {
                  _loc7_ = _loc4_[2];
               }
               if(_loc4_.length > 3)
               {
                  _loc8_ = _loc4_[3][0];
               }
               _loc3_.addAnimation(_loc5_,this.createAnimation(_loc5_,_loc6_,_loc7_,_loc8_));
            }
         }
         return _loc3_;
      }
      
      private function insertAnimation(param1:String, param2:Animation) : void
      {
         if(this.mAnimations[param1])
         {
            return;
         }
         this.mAnimations[param1] = param2;
      }
      
      public function getAnimation(param1:String) : Animation
      {
         return this.mAnimations[param1];
      }
   }
}
