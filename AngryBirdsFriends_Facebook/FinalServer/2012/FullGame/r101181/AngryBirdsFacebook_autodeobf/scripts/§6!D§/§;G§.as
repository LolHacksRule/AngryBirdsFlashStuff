package §6!D§
{
   import flash.utils.Dictionary;
   
   public class §;G§ extends §"A§
   {
       
      
      private var §[!t§:Dictionary;
      
      private var §5" §:§"A§;
      
      public function §;G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§[!t§ = new Dictionary();
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §<!=§(param1:String, param2:§"A§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param2 != null)
            {
               loop0:
               while(!this.§5" §)
               {
                  if(!_loc3_)
                  {
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     this.§5" § = param2;
                  }
                  while(_loc4_ || param1)
                  {
                     break loop0;
                  }
                  throw new Error("Trying to add a null animation");
               }
               while(true)
               {
                  this.§[!t§[param1] = param2;
                  if(!_loc3_)
                  {
                     return;
                  }
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr80);
      }
      
      override public function addFrame(param1:§3!K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5" §.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §3!K§
      {
         return this.§5" §.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§5" §.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §"A§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§[!t§[param1])
            {
               if(!(_loc2_ && this))
               {
                  return this.§[!t§[param1];
               }
            }
         }
         return this.§5" §;
      }
   }
}
