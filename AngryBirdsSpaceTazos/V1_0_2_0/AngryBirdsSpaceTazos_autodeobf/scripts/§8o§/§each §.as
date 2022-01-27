package §8o§
{
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   
   public class §each § extends §`!_§
   {
       
      
      private var §3'§:§5"%§;
      
      private var §8"7§:String;
      
      public function §each §(param1:String, param2:§5"%§, param3:Number)
      {
         super(param3);
         this.§8"7§ = param1;
         this.§3'§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Sprite = param1 as Sprite;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §]" §.§`!L§(this.§8"7§,this.§3'§,_loc2_);
      }
   }
}
