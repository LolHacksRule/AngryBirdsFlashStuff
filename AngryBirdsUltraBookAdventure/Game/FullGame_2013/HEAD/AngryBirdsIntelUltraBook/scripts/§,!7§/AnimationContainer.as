package §,!7§
{
   import flash.utils.Dictionary;
   
   public class AnimationContainer extends Animation
   {
       
      
      private var §%!?§:Dictionary;
      
      private var §00§:Animation;
      
      public function AnimationContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§%!?§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc1_ && this);
         
      }
      
      public function §`,§(param1:String, param2:Animation) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 == null)
            {
               if(!_loc4_)
               {
                  throw new Error("Trying to add a null animation");
               }
               while(true)
               {
               }
               addr84:
            }
            while(true)
            {
               if(!this.§00§)
               {
                  while(!_loc4_)
                  {
                     this.§00§ = param2;
                     while(true)
                     {
                     }
                     if(_loc4_ && param2)
                     {
                        continue;
                     }
                     return;
                     addr63:
                  }
                  continue;
               }
               while(true)
               {
                  this.§%!?§[param1] = param2;
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  §§goto(addr56);
               }
               §§goto(addr63);
            }
         }
         §§goto(addr74);
      }
      
      override public function addFrame(param1:§ H§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§00§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : § H§
      {
         return this.§00§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§00§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : Animation
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§%!?§[param1])
            {
               if(_loc2_ || this)
               {
                  return this.§%!?§[param1];
               }
            }
         }
         return this.§00§;
      }
   }
}
