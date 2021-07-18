package §7!F§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   
   public class §1"]§ extends §<d§
   {
       
      
      private var §6V§:§7#5§;
      
      public function §1"]§(param1:String, param2:§7#5§, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super(param1,param3);
            do
            {
               this.§6V§ = param2;
            }
            while(_loc4_ && param1);
            
         }
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Sprite = param1 as Sprite;
         if(!(_loc3_ && this))
         {
            if(!_loc2_)
            {
               if(_loc4_ || _loc3_)
               {
                  addr48:
                  if(param1)
                  {
                     if(_loc4_)
                     {
                        param1.dispose();
                     }
                  }
               }
            }
            return §^"U§.§&"Z§(name,this.§6V§,_loc2_);
         }
         §§goto(addr48);
      }
   }
}
