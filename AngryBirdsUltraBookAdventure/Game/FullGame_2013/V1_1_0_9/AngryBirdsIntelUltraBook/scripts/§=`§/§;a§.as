package §=`§
{
   import flash.utils.Dictionary;
   
   public class §;a§ extends §%!L§
   {
       
      
      private var § !O§:Dictionary;
      
      private var §'a§:§%!L§;
      
      public function §;a§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§ !O§ = new Dictionary();
            do
            {
               super();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function §0+§(param1:String, param2:§%!L§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2 != null)
            {
               do
               {
                  if(!this.§'a§)
                  {
                     if(!(_loc4_ && param2))
                     {
                        if(_loc4_ && this)
                        {
                           §§goto(addr79);
                        }
                        this.§'a§ = param2;
                        addr75:
                        while(true)
                        {
                        }
                        addr75:
                     }
                     §§goto(addr75);
                  }
                  while(true)
                  {
                     this.§ !O§[param1] = param2;
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§goto(addr75);
                  }
               }
               while(_loc4_);
               
               return;
            }
            addr79:
            throw new Error("Trying to add a null animation");
         }
         §§goto(addr75);
      }
      
      override public function addFrame(param1:§#`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'a§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §#`§
      {
         return this.§'a§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§'a§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §%!L§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§ !O§[param1])
            {
               if(_loc3_)
               {
                  return this.§ !O§[param1];
               }
            }
         }
         return this.§'a§;
      }
   }
}
