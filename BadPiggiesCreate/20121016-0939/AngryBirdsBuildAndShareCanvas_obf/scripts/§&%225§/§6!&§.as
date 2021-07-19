package §&"5§
{
   import flash.utils.Dictionary;
   
   public class §6!&§ extends §+2§
   {
       
      
      private var §!!g§:Dictionary;
      
      private var §6!=§:§+2§;
      
      public function §6!&§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§!!g§ = new Dictionary();
            do
            {
               super();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §9">§(param1:String, param2:§+2§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2 != null)
            {
               loop0:
               while(true)
               {
                  if(!this.§6!=§)
                  {
                     while(true)
                     {
                        this.§6!=§ = param2;
                        addr57:
                        while(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr75);
                           }
                        }
                        continue loop0;
                     }
                     addr54:
                  }
                  while(true)
                  {
                     this.§!!g§[param1] = param2;
                     if(_loc4_)
                     {
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        §§goto(addr54);
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr49);
               }
            }
            addr75:
            throw new Error("Trying to add a null animation");
         }
         addr49:
      }
      
      override public function addFrame(param1:§6!L§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§6!=§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §6!L§
      {
         return this.§6!=§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§6!=§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §+2§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§!!g§[param1])
            {
               if(!(_loc2_ && this))
               {
                  return this.§!!g§[param1];
               }
            }
         }
         return this.§6!=§;
      }
   }
}
