package §2`§
{
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   
   public class §5]§ extends §=!"§
   {
       
      
      private var §,%§:§%!!§;
      
      private var §5!7§:String;
      
      public function §5]§(param1:String, param2:§%!!§, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param3);
            while(true)
            {
               this.§5!7§ = param1;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§,%§ = param2;
            if(_loc5_ || param2)
            {
               if(_loc5_ || param2)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Sprite = param1 as Sprite;
         if(!(_loc4_ && _loc3_))
         {
            if(!_loc2_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr47:
                  if(param1)
                  {
                     if(!_loc3_)
                     {
                     }
                     return §6y§.§9![§(this.§5!7§,this.§,%§,_loc2_);
                     addr53:
                  }
                  §§goto(addr53);
               }
               param1.dispose();
            }
            §§goto(addr53);
         }
         §§goto(addr47);
      }
   }
}
