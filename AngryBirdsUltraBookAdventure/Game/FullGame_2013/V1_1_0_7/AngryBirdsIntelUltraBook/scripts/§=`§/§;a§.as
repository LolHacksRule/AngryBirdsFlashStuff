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
         if(_loc1_ || _loc1_)
         {
            this.§ !O§ = new Dictionary();
            do
            {
               super();
            }
            while(_loc2_);
            
         }
      }
      
      public function §0+§(param1:String, param2:§%!L§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(param2 == null)
            {
               if(_loc4_ || _loc3_)
               {
                  throw new Error("Trying to add a null animation");
               }
               while(true)
               {
                  addr47:
                  if(_loc3_ && param2)
                  {
                     continue;
                  }
                  return;
                  addr64:
               }
               addr89:
            }
            while(true)
            {
               if(!this.§'a§)
               {
                  if(!_loc3_)
                  {
                     this.§'a§ = param2;
                     addr74:
                     while(true)
                     {
                     }
                     addr74:
                  }
                  §§goto(addr74);
               }
               while(true)
               {
                  this.§ !O§[param1] = param2;
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr74);
               }
               §§goto(addr47);
               §§goto(addr89);
            }
            §§goto(addr64);
         }
         §§goto(addr74);
      }
      
      override public function addFrame(param1:§#`§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§ !O§[param1])
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr45);
               }
            }
            return this.§'a§;
         }
         addr45:
         return this.§ !O§[param1];
      }
   }
}
