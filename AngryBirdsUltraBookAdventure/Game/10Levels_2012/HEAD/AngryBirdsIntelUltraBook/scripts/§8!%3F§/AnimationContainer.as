package §8!?§
{
   import flash.utils.Dictionary;
   
   public class AnimationContainer extends Animation
   {
       
      
      private var §@!1§:Dictionary;
      
      private var §%_§:Animation;
      
      public function AnimationContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@!1§ = new Dictionary();
            do
            {
               super();
            }
            while(_loc2_);
            
         }
      }
      
      public function §[W§(param1:String, param2:Animation) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(param2 != null)
            {
               loop0:
               while(true)
               {
                  if(!this.§%_§)
                  {
                     while(true)
                     {
                        this.§%_§ = param2;
                        addr85:
                        while(!_loc3_)
                        {
                           while(true)
                           {
                           }
                        }
                        continue loop0;
                     }
                     addr82:
                  }
                  while(true)
                  {
                     this.§@!1§[param1] = param2;
                     if(!(_loc3_ && param2))
                     {
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr85);
                  }
                  if(_loc4_ || param2)
                  {
                     return;
                  }
               }
            }
            throw new Error("Trying to add a null animation");
         }
         §§goto(addr87);
      }
      
      override public function addFrame(param1:§?!B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§%_§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §?!B§
      {
         return this.§%_§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§%_§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : Animation
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§@!1§[param1])
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr42);
               }
            }
            return this.§%_§;
         }
         addr42:
         return this.§@!1§[param1];
      }
   }
}
