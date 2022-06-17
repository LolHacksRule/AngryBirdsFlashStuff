package §^"[§
{
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   
   public class §4$"§ extends §@#V§
   {
       
      
      private var §2!b§:§=#;§;
      
      public function §4$"§(param1:String, param2:§=#;§, param3:Number)
      {
         super(param1,param3);
         this.§2!b§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject, param2:Boolean = true) : DisplayObject
      {
         var _loc3_:Sprite = param1 as Sprite;
         if(!_loc3_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §6"M§.§@"P§(name,this.§2!b§,_loc3_);
      }
   }
}
